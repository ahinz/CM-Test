//
//  AppDelegate.m
//  CMTestApp
//
//  Created by Adam Hinz on 3/18/12.
//  Copyright (c) 2012 Azavea. All rights reserved.
//

#import "AppDelegate.h"
#import <CloudMine/CloudMine.h>
#import "Blarg.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[CMAPICredentials sharedInstance] setAppIdentifier:@"e5540f8ff80c41788564541d1e73fad7"];
    [[CMAPICredentials sharedInstance] setAppSecret:@"269195f5e1c44e07bb277113baab07a1"];
    
    
    CMStore* cms = [CMStore store];
    Blarg* b = [[Blarg alloc] initWithObjectId:@"blarg"];
    b.idata = [NSDictionary dictionaryWithObjectsAndKeys:
               [NSDictionary dictionaryWithObjectsAndKeys:@"o1", @"k1",@"o2", @"k2",@"o3", @"k3",@"o4", @"k4", nil],
               @"k1",
               [NSDictionary dictionaryWithObjectsAndKeys:@"o1", @"k1",@"o2", @"k2",@"o3", @"k3",@"o4", @"k4", nil],
               @"k2",
               [NSDictionary dictionaryWithObjectsAndKeys:@"o1", @"k1",@"o2", @"k2",@"o3", @"k3",@"o4", @"k4", nil],
               @"k3",nil];

    /*
    [cms addObject:b];
    [b save:^(NSDictionary* status) {
        NSLog(@"Save: %@", status);
    }];*/
    
    // Run twice
    [cms allObjectsWithOptions:nil
                      callback:^(NSArray* obj, NSDictionary* err) {
                          Blarg* blg = [obj objectAtIndex:0];
                          NSLog(@"Got back: %@", [blg idata]);
                      }];
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
