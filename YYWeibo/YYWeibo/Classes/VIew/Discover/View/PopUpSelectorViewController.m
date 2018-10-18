//
//  PlanSelectorViewController.m
//  AIA
//
//  Created by Alex Cortez Amulong on 9/3/11.
//  Copyright 2011 Zimerick. All rights reserved.
//

#import "PopUpSelectorViewController.h"
#ifdef IPOS_SQS_INTEGRATION
#import "ContactPrimaryKeyBean.h"
#import "SqsInterface.h"
#import "OccupationCodeBean.h"
#endif


@implementation PopUpSelectorViewController
#ifdef IPOS_SQS_INTEGRATION
@synthesize isIndex;
@synthesize sectionTitles;
@synthesize dataSourceArray;
#endif
@synthesize identifier = _identifier;
@synthesize delegate = _delegate;
@synthesize selectorTableView = _selectorTableView;
@synthesize searchBar = _searchBar;
@synthesize dataSource = _dataSource;


- (void)hideSearchBar:(BOOL)hide {
#ifdef IPOS_SQS_INTEGRATION
    if(isIndex)
    {
        [self.searchBar setHidden:NO];
        self.searchBar.frame = CGRectMake(0, 0, self.view.frame.size.width, 44);
        self.selectorTableView.frame = CGRectMake(0, 44, self.view.frame.size.width, self.view.frame.size.height - 44);
        return;
    }
#endif
    if (hide) {
        [self.searchBar setHidden:hide];
    
        if (self.searchBar.hidden) {
            self.selectorTableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        }
    }
}

#ifdef IPOS_SQS_INTEGRATION

- (void) createOrderSections
{
   NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
	
    for (NSString  *ele in _dataSource)
	{
		NSString *str = [ele subString:0 toIndex:1];
		if (str==nil) str = @"";
		NSMutableArray *array = [dic objectForKey:str];
		if (array==nil)
		{
			array = [NSMutableArray arrayWithCapacity:10];
			[dic setObject:array forKey:str];
		}
		
		[array addObject:ele];
	}
	
	sectionTitles = [NSMutableArray arrayWithArray:[[dic allKeys] sortedArrayUsingSelector:@selector(compare:)]];
    
	[sectionTitles retain];
	
	self.dataSourceArray = [NSMutableArray arrayWithCapacity:sectionTitles.count];
	
	for (int i = 0; i < sectionTitles.count; i++)
	{
		[self.dataSourceArray addObject:[dic objectForKey:[sectionTitles objectAtIndex:i]]];
	}
	
	
	[dic release];
}

#endif

- (void)setPopUpContents:(NSArray*)contents {
    if (_searchString == nil) {
        _searchString = [[NSMutableString alloc] initWithCapacity:0];
        [_searchString setString:@""];
    }
    
    if (_dataSource == nil) {
        _dataSource = [[NSMutableArray alloc] initWithCapacity:0];
    }
    
    if (_displayedArray == nil) {
        _displayedArray = [[NSMutableArray alloc] initWithCapacity:0];
    }
    
    [_dataSource removeAllObjects];
    
    [_dataSource addObjectsFromArray:contents];
    [_displayedArray addObjectsFromArray:_dataSource];
#ifdef IPOS_SQS_INTEGRATION
    sectionTitles = nil;
    dataSourceArray = nil;
    if (isIndex) {
        [self createOrderSections];
    }
#endif
    [self resize];
    
    [self.selectorTableView reloadData];
}

- (void)resize {

    CGFloat calculatedHeight = [_dataSource count] * 44.0f;//(self.searchBar.hidden) ? [_dataSource count] * 44.0f : ([_dataSource count] * 44.0f) + 44.0f;
#ifdef IPOS_SQS_INTEGRATION
    //For searchbar
    if (isIndex) {
        calculatedHeight = calculatedHeight  + 44;
    }
#endif
//    CGFloat calculatedHeight = ([_dataSource count] * 44.0f) + self.searchBar.frame.size.height;
    if (calculatedHeight < 480.0f) {
#if(!CHECKIOS8)
        self.preferredContentSize = CGSizeMake(320.0f, calculatedHeight);
#else
        self.contentSizeForViewInPopover = CGSizeMake(320.0f, calculatedHeight);
#endif
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    _delegate = nil;
    [_searchString release];
    [_dataSource release];
    [_displayedArray release];
    [_identifier release];
    [_selectorTableView release];
    [_searchBar release];
#ifdef IPOS_SQS_INTEGRATION
    [sectionTitles release];
    [dataSourceArray release];
#endif
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark -
#pragma mark Search

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
#ifdef IPOS_SQS_INTEGRATION
    if (isIndex) {
        isSearch = [searchText length] > 0 ? true : false;
    }
#endif
    [_searchString setString:searchText];
    
    [self search];
}

- (void)search {
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [self performSelector:@selector(updateTableContent) withObject:nil afterDelay:0.3f];
}

- (void)updateTableContent {
    if ([_searchString length] > 0) {
        NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF contains[c] %@", _searchString];
        [_displayedArray setArray:[_dataSource filteredArrayUsingPredicate:predicate]];
    }
    else {
#ifdef IPOS_SQS_INTEGRATION
        [[self selectorTableView] reloadData];
        return;
#endif
        [_displayedArray setArray:_dataSource];
    }
    
    [[self selectorTableView] reloadData];
}

#ifdef IPOS_SQS_INTEGRATION

-(int)getIndexFromOccupation:(NSString *)occupation
{
    NSMutableArray *array = [SqsInterface selectAllOccupationCode];
	for (int i = 0; i < [array count]; i++) {
		OccupationCodeBean *occupationBean = [array objectAtIndex:i];
        if ([occupationBean.occupation isEqualToString:occupation]) {
            return i;
        }
	}
    return -1;

}

- (UILabel*)createLabel:(CGRect)frame withTag:(int)tag {
    
    UILabel *label = [[[UILabel alloc]initWithFrame:frame] autorelease];
    label.numberOfLines = 2;
    label.tag = tag;
    label.minimumScaleFactor = 0.5f;
    label.adjustsFontSizeToFitWidth = true;
    label.font = [UIFont fontWithName:@"Helvetica" size:15.0f];
    label.hidden = true;
    return label;
}

#endif
#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self setSelectorTableView:nil];
    [self setSearchBar:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#ifdef IPOS_SQS_INTEGRATION
    if (isSearch) return 1;
    if (isIndex) return sectionTitles.count;
#endif
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#ifdef IPOS_SQS_INTEGRATION
    if (isIndex) 
    {
        if (isSearch) {
            return [_displayedArray count];
        }
        return [[self.dataSourceArray objectAtIndex:section] count];
    }
#endif
	return [_displayedArray count];	
}

#ifdef IPOS_SQS_INTEGRATION
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    
    if(!isIndex )
        return nil;
    if (isSearch) {
        return nil;
    }
    return sectionTitles;
}
#endif

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"SelectPlanTableViewCell";
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
        
        [cell.contentView addSubview:[self createLabel:CGRectMake(10, 0, 150, 45) withTag:10]];
        
        UILabel *line = [[[UILabel alloc]initWithFrame:CGRectMake(165, 4, 3, 36)] autorelease];
        line.tag = 20;
        line.backgroundColor = [UIColor grayColor];
        line.hidden = true;
        line.layer.cornerRadius = 2.0;
        line.layer.masksToBounds = true;
        [cell.contentView addSubview:line];
        
        [cell.contentView addSubview:[self createLabel:CGRectMake(170, 0, 140, 45) withTag:30]];
    }
    NSString *planName = nil;
#ifdef IPOS_SQS_INTEGRATION
    if (! self.isIndex) {
#endif
        planName = [_displayedArray objectAtIndex:indexPath.row];
        if ([planName isKindOfClass:[NSString class]]) {
            [cell.textLabel setText:planName];
            cell.textLabel.minimumFontSize = 12.0f;
            cell.textLabel.adjustsFontSizeToFitWidth = YES;
            [cell.textLabel setFont:[UIFont fontWithName:@"Helvetica" size:18.0f]];
        }
#ifdef IPOS_SQS_INTEGRATION
    }

    if (! self.isIndex) {
    if ([planName isKindOfClass:[ContactPrimaryKeyBean class]]) 
    {
        ContactPrimaryKeyBean *bean= [_displayedArray objectAtIndex:indexPath.row];
        // Configure the cell.
        
        UILabel *name = (UILabel*)[cell.contentView viewWithTag:10];
        name.hidden = false;
        name.text = [bean description];
        
        UILabel *line = (UILabel*)[cell.contentView viewWithTag:20];
        UILabel *passport = (UILabel*)[cell.contentView viewWithTag:30];
        
        if (bean.passportNRIC.length > 0) {
            line.hidden = false;
            passport.hidden = false;
            passport.text = bean.passportNRIC;
        } else {
            line.hidden = true;
            passport.hidden = true;
        }
    }
}
    if (self.isIndex) {
        cell.textLabel.adjustsFontSizeToFitWidth = NO;
        if (isSearch) {
            cell.textLabel.text = [_displayedArray objectAtIndex:indexPath.row];
        }
        else {
            cell.textLabel.text = [[self.dataSourceArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        }
       
        [cell.textLabel setFont:[UIFont boldSystemFontOfSize:17.0f]];
        //[cell.textLabel setFont:[UIFont fontWithName:@"Helvetica" size:15.0f]];
        cell.textLabel.lineBreakMode = UILineBreakModeWordWrap;
        cell.textLabel.numberOfLines = 0;
    }
#endif
    
    return cell;
}

#pragma mark -
#pragma mark Table view Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.delegate) {
#ifdef IPOS_SQS_INTEGRATION
        if (isIndex) {
            int index = -1;
            NSString *selectedValue = nil;
            if (isSearch) {
                selectedValue = [_displayedArray objectAtIndex:indexPath.row];
            }
            else {
                 selectedValue =  [[self.dataSourceArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        }
            index = [_dataSource indexOfObject:selectedValue];
            //index = [self getIndexFromOccupation:selectedValue];
            [self.delegate popUpSelectorViewController:self didSelectObjectAtIndex: index];
            return;
        }
#endif
        [self.delegate popUpSelectorViewController:self didSelectObjectAtIndex:indexPath.row];
    }
}

@end
