//
//  YYSqliteMangaerUnitTest.m
//  YYWeiboTests
//
//  Created by g on 2018/11/3.
//  Copyright © 2018 g. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "YYStudent.h"
#import "YYSqliteManageWIthFMDB.h"
#import "FMDB.h"


@interface YYSqliteMangaerUnitTest : XCTestCase

@end

@implementation YYSqliteMangaerUnitTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    YYStudent *stu = [[YYStudent alloc] init];
    stu.name = @"zs";
    stu.age = 28;
    
    [stu insertStudent];
    
    
}

-(void)testInsertDB{
    NSString *insertSQL = @"INSERT INTO t_student (name,age) VALUES (?,?);";
    FMDatabaseQueue *dbQueue = [YYSqliteManageWIthFMDB shareInstance].queue;
    [dbQueue inDatabase:^(FMDatabase *db) {
        if ( [db executeUpdate:insertSQL withVAList:(__bridge struct __va_list_tag *)(@[@"why",@18])]) {
            NSLog(@"插入数据成功");
        };
    }];
}

-(void)testQUeryExample{
    NSString *querySQL = @"SELECT * FROM t_student ORDER BY ID DESC;";
    
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end