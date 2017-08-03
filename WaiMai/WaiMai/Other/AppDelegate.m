//
//  AppDelegate.m
//  WaiMai
//
//  Created by Alex Chen on 07/31/2017.
//  Copyright © 2017 Alex Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "ALEXShopController.h"
#import "ALEXNavigationController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// 自定义 启动窗口
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    // 1.1 创建 窗口
    _window = [[UIWindow alloc] init];
    
    // 1.2 创建 视图控制器
    ALEXShopController *shopVC = [[ALEXShopController alloc] init];
    
    // 1.3 创建 导航控制器, 设置它的根控制器为shopVC
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:shopVC];          // 使用系统样式 创建导航控制器
    ALEXNavigationController *nav = [[ALEXNavigationController alloc] initWithRootViewController:shopVC];        // 使用自定义样式 创建导航控制器, 这样就会执行自定义导航控制器内的代码

    
    // 1.4 为窗口 指定根控制器为 导航控制器
    _window.rootViewController = nav;
    
    // 1.5 设置 窗口成为主窗口, 并且可见
    [_window makeKeyAndVisible];
    
    // 1.6 返回值
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
