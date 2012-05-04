//
//  ViewController.m
//  test
//
//  Created by remote roamer on 12-5-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize webView;
@synthesize bundle;
@synthesize javascriptBridge;


-(void) javascriptBridge:(WebViewJavascriptBridge *)bridge receivedMessage:(NSString *)message fromWebView:(UIWebView *)webView
{
    
    
}


-(void) webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"loading html start");
    //[MBProgressHUD showHUDAddedTo:self.webView animated:YES];
}

-(void) webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"load html finish.");
    //[MBProgressHUD hideHUDForView:self.webView animated:YES];
}

-(void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"load html error:%@",error);
    //[MBProgressHUD hideHUDForView:self.webView animated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"initWithNibName");
        //self.javascriptBridge = [WebViewJavascriptBridge javascriptBridgeWithDelegate: (AppDelegate *)([UIApplication sharedApplication]).delegate];
        self.javascriptBridge = [WebViewJavascriptBridge javascriptBridgeWithDelegate:self];
       
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    
    //self.webView.delegate = self;
    self.webView.delegate = self.javascriptBridge;
    self.bundle = [NSBundle mainBundle];
    [webView loadHTMLString:@"aaa" baseURL:[NSURL fileURLWithPath:[bundle bundlePath]]];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
