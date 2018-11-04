//
//  YYSqliteManageWIthFMDB.m
//  YYWeibo
//
//  Created by g on 2018/11/4.
//  Copyright © 2018 g. All rights reserved.
//

#import "YYSqliteManageWIthFMDB.h"
#import "FMDB.h"

@interface YYSqliteManageWIthFMDB()



@end

@implementation YYSqliteManageWIthFMDB

static id _instance;

+(instancetype)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

-(BOOL)openDB{
    
    NSString *filePath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    filePath = [filePath stringByAppendingPathComponent:@"testFMDB.sqlite"];
    //NSString 如何转成c语言的字符串
//    if (sqlite3_open(filePath.UTF8String, &_db) != SQLITE_OK) {
//        NSLog(@"打开数据库失败");
//        return NO;
//    } ;
   // FMDatabaseQueue;-----这个队列中内置了一个数据库。可以保证线程安全  FMDatabase;这个不能保证线程安全。
    self.queue = [[FMDatabaseQueue alloc] initWithPath:filePath];
    
    
    return [self createTable];
}

-(BOOL)createTable{
    NSString *createTableSQL = @"CREATE TABLE IF NOT EXISTS 't_student' ('name' text,'age' integer,'height' real,'id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT);";
    
    __block BOOL flag;
    [self.queue inDatabase:^(FMDatabase *db) {
         flag = [db executeUpdate:createTableSQL];
//        [db executeUpdate:<#(NSString *)#> withVAList:<#(struct __va_list_tag *)#>];
        if (flag) {
            NSLog(@"创建表成功");
        }
    }];
    
    return flag;
//    return  [self execSQL:createTableSQL];
}

-(BOOL)execSQL:(NSString *)sql{
//    return sqlite3_exec(self.db, sql.UTF8String, nil, nil, nil) == SQLITE_OK;
    
    return NO;
}

@end
