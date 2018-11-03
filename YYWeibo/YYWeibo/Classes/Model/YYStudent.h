//
//  YYStudent.h
//  YYWeibo
//
//  Created by g on 2018/11/3.
//  Copyright © 2018 g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YYStudent : NSObject

@property (copy,nonatomic) NSString *name;

@property (assign,nonatomic) NSInteger age;

-(void)insertStudent;

@end
