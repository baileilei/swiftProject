//
//  ViewController.m
//  testNSSet
//
//  Created by g on 2018/12/6.
//  Copyright © 2018 g. All rights reserved.
//

#import "ViewController.h"
#import "YYPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableSet *set = [NSMutableSet set];
    for (int i = 0; i < 7; i++) {
        YYPerson *person = [[YYPerson alloc] init];
        person.name = [NSString stringWithFormat:@"LeNa%d",i];
        person.height = i;
        person.Id = 1000 + i;
        
        [set addObject:person];
    }
    
    NSSet *unmutalbeSet = [NSSet setWithSet:set];
    
    NSLog(@"set-.cout----%d",set.count);
    
//    NSMutableSet *setTwo = [NSMutableSet setWithObject:set];
//    for (YYPerson *person in setTwo) {
//        if (person.Id == 1002) {
//            [set removeObject:person];
//        }
//    }
//     NSLog(@"after remove set-.cout----%d",setTwo.count);
    
    NSMutableArray *setArray = [NSMutableArray arrayWithArray:set.allObjects];
    
//    for (YYPerson *person in setArray) {
//        if (person.Id == 1002) {
//            [setArray removeObject:person];
//        }
//    }
//    NSLog(@"after remove set-.setArray----%d",setArray.count);
//    NSMutableArray *filterArray = [NSMutableArray ];
    NSMutableSet *Mset = [NSMutableSet setWithObject:set];
    NSEnumerator *enumerator = [set objectEnumerator];
    NSMutableSet *removeSet = [NSMutableSet set];
    YYPerson *person;
    while (person = enumerator.nextObject) {
        NSLog(@"value %@",person);
        if (person.Id == 1005) {
//            [Mset addObject:person];
            [Mset removeObject:person];
            [removeSet addObject:person];
            
            [set removeObject:person];
        }
    }
    NSLog(@"set----%@     %d",set.copy,set.count);
    NSLog(@"Mset----%@     %d",removeSet.copy,removeSet.count);
    NSLog(@"Mset----%@     %d",Mset.copy,Mset.count);

}




@end
