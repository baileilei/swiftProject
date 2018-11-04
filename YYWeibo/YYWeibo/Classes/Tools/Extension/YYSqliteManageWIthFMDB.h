//
//  YYSqliteManageWIthFMDB.h
//  YYWeibo
//
//  Created by g on 2018/11/4.
//  Copyright © 2018 g. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDB.h"

@interface YYSqliteManageWIthFMDB : NSObject

@property (nonatomic,weak) FMDatabaseQueue *queue;

+(instancetype)shareInstance;

-(BOOL)openDB;

@end
