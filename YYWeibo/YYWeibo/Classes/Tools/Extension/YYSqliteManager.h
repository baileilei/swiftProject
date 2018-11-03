//
//  YYSqliteManager.h
//  YYWeibo
//
//  Created by g on 2018/11/3.
//  Copyright © 2018 g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YYSqliteManager : NSObject

+(instancetype)shareInstance;

-(BOOL)openDB;

-(BOOL)execSQL:(NSString *)sql;

@end
