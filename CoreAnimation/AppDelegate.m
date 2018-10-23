//
//  AppDelegate.m
//  CoreAnimation
//
//  Created by 林文锐 on 2018/10/23.
//  Copyright © 2018年 林文锐. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

/**
 CoreAnimation是苹果提供的一套基于绘图的动画框架
    UIKit/AppKit
        CoreAnimation
            OpenGL ES/ OpenGL, Core Graphics
            Graphics Hardware
 最底层是图形硬件(GPU),上层是 OpenGL 和 CoreGraphics,提供一些 接口来访问 GPU, 再上层的 Core Animation 在此基础上封装了一套动画 API, 最上面的的 UIKit属于应用层,处理与用户的交互.
 CoreAniation 属于QuartzCore 框架, Quartz 原本是 macOS 的 Darwin核心之上的绘图技术.在 iOS 中,我们所看到的视图 UIView 是通过W QuartzCore中的 CALayer 显示出来,我们讨论的动画效果也是加在这个 CALayer上的.
 主要内容:
 CALayer(图层类)和 CAAnimation(动画类)的内容和关系
 以及他们实现的一个重要协议 CAMediaTiming
 
 CALayer图层类是 CoreAnimation 的基础,它提供了一套抽象概念, CALayer 是整个图层类的基础,它是所有核心动画图层的父类
 */

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
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
