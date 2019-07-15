//
//  MapVC01.h
//  EZTrafficSG
//
//  Created by administrator on 24/1/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EZTrafficSGAppDelegate.h"


@interface MapVC01 : UIViewController {
	
	IBOutlet UIWebView *webView;
	EZTrafficSGAppDelegate *appDelegate;
	
}

-(IBAction)switchtoMenu;

@property(nonatomic,retain)IBOutlet UIWebView *webView;

@end
