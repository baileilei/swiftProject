//
//  YYStudent.m
//  YYWeibo
//
//  Created by g on 2018/11/3.
//  Copyright © 2018 g. All rights reserved.
//

#import "YYStudent.h"
#import "YYSqliteManager.h"
#import "YYWeibo-Swift.h"

@implementation YYStudent

-(void)insertStudent{
    NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO t_student (name,age) VALUES ('%@',%ld)",self.name,self.age];
    
    BOOL flag = [[YYSqliteManager shareInstance] execSQL:insertSQL];
    if (!flag) {
        NSLog(@"插入数据失败");
    }
    
//    SqliteManagerWithFMDB *instance = [[SqliteManagerWithFMDB alloc] init];
//    instance.dbQueue;
}

-(id)queryStudentWithSQL:(NSString *)querySql{
    [YYSqliteManager.shareInstance execSQL:querySql];
    
    return nil;
}

-(void)updateStuWithSQL:(NSString *)updateSql{
     [YYSqliteManager.shareInstance execSQL:updateSql];
}

@end