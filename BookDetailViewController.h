//
//  BookDetailViewController.h
//  EZTrafficSG
//
//  Created by administrator on 6/2/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Book;

@interface BookDetailViewController : UIViewController {
	
	IBOutlet UITableView *tableView;
	
	Book *aBook;
}


@property (nonatomic, retain) Book *aBook;

@end


