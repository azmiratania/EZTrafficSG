//
//  TrafficRules.h
//  EZTrafficSG
//
//  Created by DIT_DMIT on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EZTrafficSGAppDelegate.h"
#import "TrafficRulesPage2.h"

@interface TrafficRules : UIViewController{
	
	EZTrafficSGAppDelegate *appDelegate;
	
}

-(IBAction)switchToNextPage;
-(IBAction)switchtoMenu;
@end
