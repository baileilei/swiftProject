//
//  PlanSelectorViewController.h
//  AIA
//
//  Created by Alex Cortez Amulong on 9/3/11.
//  Copyright 2011 Zimerick. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PopUpSelectorViewControllerDelegate;

@interface PopUpSelectorViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate> {

            
    NSString* _identifier;
    NSMutableString* _searchString;
    NSMutableArray* _dataSource;
    NSMutableArray* _displayedArray;
//    id <PopUpSelectorViewControllerDelegate> _delegate;
    UITableView *_selectorTableView;
    UISearchBar *_searchBar;
#ifdef IPOS_SQS_INTEGRATION
    bool isIndex;
    NSMutableArray *sectionTitles;
    NSMutableArray *dataSourceArray;
    //For Search occupation
    bool isSearch;
#endif
}
#ifdef IPOS_SQS_INTEGRATION
@property bool isIndex;
@property (nonatomic,retain) NSMutableArray *sectionTitles;
@property (nonatomic,retain) NSMutableArray *dataSourceArray;
#endif
@property (nonatomic, retain) NSString* identifier;
@property (nonatomic, retain) NSArray* dataSource;
@property (nonatomic, weak) id <PopUpSelectorViewControllerDelegate> delegate;
@property (nonatomic, retain) IBOutlet UITableView *selectorTableView;
@property (nonatomic, retain) IBOutlet UISearchBar *searchBar;

- (void)hideSearchBar:(BOOL)hide;
- (void)setPopUpContents:(NSArray*)contents;
- (void)search;
- (void)resize;

@end

@protocol PopUpSelectorViewControllerDelegate
- (void)popUpSelectorViewController:(PopUpSelectorViewController*)controller didSelectObjectAtIndex:(NSInteger)index;
@end
