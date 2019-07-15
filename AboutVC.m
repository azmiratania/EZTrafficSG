//
//  AboutVC.m
//  EZTrafficSG
//
//  Created by administrator on 24/1/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import "AboutVC.h"
#import "EZTrafficSGViewController.h"
#import "SP.h"

@implementation AboutVC

//
//-(IBAction)switchtoMenu{
//	EZTrafficSGViewController * screen =[[EZTrafficSGViewController alloc] initWithNibName:nil bundle:nil];
//	screen.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
//    [self presentModalViewController:screen animated:YES];
//}

-(IBAction)switchToNextPage;
{
    SP * sp = [[SP alloc] initWithNibName:nil bundle:nil];
	
	UIBarButtonItem *newBackButton = [[UIBarButtonItem alloc] initWithTitle: @"Back" style: UIBarButtonItemStyleBordered target: nil action: nil];
	
	[[self navigationItem] setBackBarButtonItem: newBackButton];
	
	[newBackButton release];
	
	[self.navigationController pushViewController:sp animated:YES];
}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	appDelegate = (EZTrafficSGAppDelegate *)[[UIApplication sharedApplication] delegate];
	self.title = @"About";
	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
