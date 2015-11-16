//
//  AppDelegate.m
//  MZGuidePages
//
//  Created by boco on 15/11/11.
//  Copyright © 2015年 Machelle. All rights reserved.
//

#import "AppDelegate.h"
#import "MZGuidePages.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[ViewController alloc] init];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    //只运行一次
    //    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //    NSString *launched = [userDefaults objectForKey:@"launched"];
    //    if (!launched)
    //    {
    //        [self guidePages];
    //        launched = @"YES";
    //        [userDefaults setObject:launched forKey:@"launched"];
    //        [userDefaults synchronize];
    //    }

    //一直运行
    [self guidePages];
    return YES;
}

- (void)guidePages
{
    //数据源
    NSArray *imageArray = @[ @"1.jpg", @"2.jpg", @"3.jpg", @"4.jpg" ];

    //  初始化方法1
    MZGuidePages *mzgpc = [[MZGuidePages alloc] init];
    mzgpc.imageDatas = imageArray;
    __weak typeof(MZGuidePages) *weakMZ = mzgpc;
    mzgpc.buttonAction = ^{
      [UIView animateWithDuration:2.0f
          animations:^{
            weakMZ.alpha = 0.0;
          }
          completion:^(BOOL finished) {
            [weakMZ removeFromSuperview];
          }];
    };

    //  初始化方法2
    //    MZGuidePagesController *mzgpc = [[MZGuidePagesController alloc]
    //    initWithImageDatas:imageArray
    //                                                                            completion:^{
    //                                                                              NSLog(@"click!");
    //

    //要在makeKeyAndVisible之后调用才有效
    [self.window addSubview:mzgpc];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for
    // certain types of temporary interruptions (such as an incoming phone call or SMS message) or
    // when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame
    // rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store
    // enough application state information to restore your application to its current state in case
    // it is terminated later.
    // If your application supports background execution, this method is called instead of
    // applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo
    // many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive.
    // If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also
    // applicationDidEnterBackground:.
}

@end
