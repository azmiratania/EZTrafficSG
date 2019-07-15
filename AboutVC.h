//
//  AboutVC.h
//  EZTrafficSG
//
//  Created by administrator on 24/1/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EZTrafficSGAppDelegate.h"


@interface AboutVC : UIViewController {
	
	EZTrafficSGAppDelegate *appDelegate;
	
}

-(IBAction)switchtoMenu;
-(IBAction)switchToNextPage;

@end
