//
//  LineLogin.m
//  RNLine
//
//  Created by Emiliano Botti on 9/25/19.
//  Copyright © 2019 XmartLabs S.R.L.. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

#import "LineLogin.swift"

//
// Setup the plugin using your CHANNEL_ID when the app finishes launching
//
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [LineLogin setupWithChannelID:@"1655549184" universalLinkURL:nil];
}

//
// Handle redirection back to the app from Line
//
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
  return [LineLogin application:app open:url options:options];
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray<id<UIUserActivityRestoring>> * _Nullable))restorationHandler
{
  BOOL handledLine = [LineLogin application:application continue:userActivity restorationHandler:restorationHandler];
  return handledLine;
}
