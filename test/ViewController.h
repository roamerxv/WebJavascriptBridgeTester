//
//  ViewController.h
//  test
//
//  Created by remote roamer on 12-5-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewJavascriptBridge.h"
#import "AppDelegate.h"

@class AppDelegate;

@interface ViewController : UIViewController < WebViewJavascriptBridgeDelegate >
{
    IBOutlet UIWebView * webView;
}

@property(retain,nonatomic) UIWebView * webView;

@property(retain,nonatomic) WebViewJavascriptBridge * javascriptBridge;

@property(nonatomic,retain)  NSBundle* bundle ;

@end
