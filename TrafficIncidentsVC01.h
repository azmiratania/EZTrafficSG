//
//  TrafficIncidentsVC01.h
//  EZTrafficSG
//
//  Created by administrator on 6/2/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EZTrafficSGAppDelegate, BookDetailViewController;

@interface TrafficIncidentsVC01 : UITableViewController {

	EZTrafficSGAppDelegate *appDelegate;
	BookDetailViewController *bdvController;

	
}

-(void)refresh:(id)sender;


@end






