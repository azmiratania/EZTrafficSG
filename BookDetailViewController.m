//
//  BookDetailViewController.m
//  EZTrafficSG
//
//  Created by administrator on 6/2/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import "BookDetailViewController.h"
#import "Book.h"


@implementation BookDetailViewController

@synthesize aBook;

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

// Implement viewDidLoad to do additional setup after loading the view.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.title = @"Traffic Incidents";
	
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	[tableView reloadData];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *)indexPath{
	
	static CGFloat height = 0.0; 
	
	switch(indexPath.section)
	{
		case 0:
			height= 40.0;
			break;
		case 1:
			height= 40.0;
			break;
		case 2:
			height= 40.0;
			break;
		case 3:
			height= 200;
			break;
	}
	
	return height;
	//return 200;
	
}

- (UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
	
	NSString *aBookXCoor = [aBook.XCoor stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
	NSString *aBookYCoor = [aBook.YCoor stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
	NSString *aBookType = [aBook.Type stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
	NSString *aBookMessage = [aBook.Message stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
	
	switch(indexPath.section)
	{
		case 0:
			cell.textLabel.text = aBookXCoor;
			break;
		case 1:
			cell.textLabel.text = aBookYCoor;
			break;
		case 2:
			cell.textLabel.text = aBookType;
			break;
		case 3:
			cell.textLabel.text = aBookMessage;
			cell.textLabel.numberOfLines = 0;
			break;
	}
	
	
	
	NSString *url = [NSString stringWithFormat:@"http://maps.google.com/maps?q=Incident@%@,%@",aBookYCoor,aBookXCoor];
	
	//NSLog(@"%@",latlong);
	
	//NSString *url = [NSString stringWithFormat: @"http://maps.google.com/maps?ll=%@",
	//[latlong stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
	
	NSLog(@"%@",url);
	
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
	
	
	return cell;
}

- (NSString *)tableView:(UITableView *)tblView titleForHeaderInSection:(NSInteger)section {
	
	NSString *sectionName = nil;
	
	switch(section)
	{
		case 0:
			sectionName = [NSString stringWithString:@"XCoor"];
			break;
		case 1:
			sectionName = [NSString stringWithString:@"YCoor"];
			break;
		case 2:
			sectionName = [NSString stringWithString:@"Type"];
			break;
		case 3:
			sectionName = [NSString stringWithString:@"Message"];
			break;
	}
	
	return sectionName;
}



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
	[aBook release];
	[tableView release];
    [super dealloc];
}


@end
