//
//  AppDelegate.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/4/30.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import UIKit


@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

   
   var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UIApplication.shared.isNetworkActivityIndicatorVisible = true;
        Thread.sleep(forTimeInterval: 2);
      
        
        let rest:Bool =  BaseViewController().isFirstLaunch();
        
        if rest {
            //第一次启动
            rootViewController = HelpViewController();
            
        }else{
            //不是第一次启动
            rootViewController = TabBarViewController();
            
        }
        window = UIWindow(frame: UIScreen.main.bounds);
       
        window?.rootViewController = rootViewController;
       
        
        window?.makeKeyAndVisible();
        //测试数据
        
        
        
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last
        let dataPath = path! + "/Exception.txt"
        let data = NSData(contentsOfFile: dataPath)
        if data != nil{
          
            print(data ?? AnyObject.self);
        }
        
        
       
        
        
        
       
        
        
        return true
       
       

       
    }
   
  
   
   

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

