//
//  YYStudent.m
//  YYWeibo
//
//  Created by g on 2018/11/3.
//  Copyright © 2018 g. All rights reserved.
//

#import "YYStudent.h"
#import "YYSqliteManager.h"

@implementation YYStudent

-(void)insertStudent{
    NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO t_student (name,age) VALUES ('%@',%ld)",self.name,self.age];
    
    BOOL flag = [[YYSqliteManager shareInstance] execSQL:insertSQL];
    if (!flag) {
        NSLog(@"插入数据失败");
    }
}

@end
