//
//  AppDelegate.swift
//  YYWeibo
//
//  Created by g on 2018/10/5.
//  Copyright © 2018 g. All rights reserved.
//
/*
 需求：    OC中用宏解决的。
 开发阶段：打印log
 发布阶段：隐藏log
 */

import UIKit
import QorumLogs

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        let userAccount = YYUserAccount.loadUserAccount()
//        print(userAccount)
//        
//        
//        window = UIWindow(frame: UIScreen.main.bounds)
//        
//        window?.rootViewController = YYTabBarViewController()
//        
//        window?.makeKeyAndVisible()
       QorumLogs.enabled = false
//        QorumLogs.minimumLogLevelShown = 3//设置打印级别
//        QorumLogs.onlyShowThisFile("ViewController")//设置只打印某个文件的log
        
//        QorumLogs.test()
        QL1("1")
        QL2("2")
        QL3("3")
        QL4("4")
        QLPlusLine()
        QLShortLine()
        
        flag = false
        
//        print(#file)
//        print(#function)
//        print(#line)
        YYLog(message: "adb",fileName:"AAA")
        
        YYLog(message: 1)
        YYLog(message: 10.1)
        YYLog(message: [Int]())
        return true
    }
    
    var flag: Bool = false
    
   
    //泛型函数     T具体是什么类型由调用者来决定
    func YYLog<T>(message:T, fileName:String = #file, methodName:String = #function, lineNumber:Int = #line ) {
        
        if flag{
            print("\((fileName as NSString).pathComponents.last!).\(methodName)[\(lineNumber)]:\(message)")
        }
    }
    
     //可传，可不传   函数的默认值------------面试题：函数中的参数是否可以传入默认值？ 接口设计？？？
//    func YYLog(message:String, fileName:String = #file, methodName:String = #function, lineNumber:Int = #line ) {
//
//        print("\((fileName as NSString).pathComponents.last!).\(methodName)[\(lineNumber)]:\(message)")
//    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

