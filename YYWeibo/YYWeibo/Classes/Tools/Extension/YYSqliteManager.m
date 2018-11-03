//
//  YYSqliteManager.m
//  YYWeibo
//
//  Created by g on 2018/11/3.
//  Copyright © 2018 g. All rights reserved.
//

#import "YYSqliteManager.h"
#import <sqlite3.h>

static id _instance;

@interface YYSqliteManager()

@property (assign,nonatomic) sqlite3 *db;//&_db;    self.db;

@end

@implementation YYSqliteManager

//static id _instance;

+(instancetype)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

-(BOOL)openDB{
    
    NSString *filePath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    filePath = [filePath stringByAppendingPathComponent:@"test.sqlite"];
    //NSString 如何转成c语言的字符串
    if (sqlite3_open(filePath.UTF8String, &_db) != SQLITE_OK) {
        NSLog(@"打开数据库失败");
        return NO;
    } ;
    return [self createTable];
}

-(BOOL)createTable{
    NSString *createTableSQL = @"CREATE TABLE IF NOT EXISTS 't_student' ('name' text,'age' integer,'height' real,'id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT);";
    
    return  [self execSQL:createTableSQL];
}

-(BOOL)execSQL:(NSString *)sql{
    return sqlite3_exec(self.db, sql.UTF8String, nil, nil, nil) == SQLITE_OK;
}

@end
