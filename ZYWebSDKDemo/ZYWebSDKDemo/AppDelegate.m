//
//  AppDelegate.m
//  ZYWebSDKDemo
//
//  Created by zhangyu on 2019/6/27.
//  Copyright © 2019 Octopus. All rights reserved.
//

#import "AppDelegate.h"
#import <ZYWebSDK/ZYWebSDKManager.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

#import <GoogleSignIn/GoogleSignIn.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //以下是demo测试参数，不能用做出包
    //网游sdk
    [[ZYWebSDKManager shareZYWebSDKManager] initWithGameKey:@"9BC654719A4729440705596B13EF1936" promoteID:@"900035" gameAppID:@"10032"];
    
    //Facebook
    [[FBSDKApplicationDelegate sharedInstance] application:application
                             didFinishLaunchingWithOptions:launchOptions];
    [FBSDKSettings setAppID:@"3065296300163939"];
    
    //谷歌登录
    [GIDSignIn sharedInstance].clientID = @"744563823552-ke4sv6mcl32ahd8jjs73334r7kgfsfue.apps.googleusercontent.com";
    

    return YES;
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
            options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    
    [[FBSDKApplicationDelegate sharedInstance] application:application
                                                   openURL:url
                                                   options:options];
    
    return YES;
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(nullable NSString *)sourceApplication
         annotation:(nonnull id)annotation
{
    return [[FBSDKApplicationDelegate sharedInstance] application:application
                                                          openURL:url
                                                sourceApplication:sourceApplication
                                                       annotation:annotation];
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
