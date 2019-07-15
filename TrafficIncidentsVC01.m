//
//  TrafficIncidentsVC01.m
//  EZTrafficSG
//
//  Created by administrator on 6/2/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import "TrafficIncidentsVC01.h"
#import "EZTrafficSGAppDelegate.h"
#import "EZTrafficSGViewController.h"
#import "Book.h"
#import "BookDetailViewController.h"
#import "XMLParser.h"

@implementation TrafficIncidentsVC01


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [appDelegate.books count];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	
	Book *aBook = [appDelegate.books objectAtIndex:indexPath.row];
	
	CGFloat		result = 50.0f;
	NSString*	text = aBook.Message;
	CGFloat		width = 0;
	CGFloat		tableViewWidth;
	CGRect		bounds = [UIScreen mainScreen].bounds;
	
	
	if (UIInterfaceOrientationIsPortrait(self.interfaceOrientation))
		tableViewWidth = bounds.size.width;
	else
		tableViewWidth = bounds.size.height;
	
	width = tableViewWidth - 110;		// fudge factor, 115 isn't quite right
	//text = [self textForRow:indexPath.row];
	
	if (text)
	{
		// The notes can be of any height
		// This needs to work for both portrait and landscape orientations.
		// Calls to the table view to get the current cell and the rect for the 
		// current row are recursive and call back this method.
		CGSize		textSize = { width, 20000.0f };		// width and height of text area
		CGSize		size = [text sizeWithFont:[UIFont systemFontOfSize:15.0f] constrainedToSize:textSize lineBreakMode:UILineBreakModeWordWrap];
		
		//size.height += 10.0f;				// top and bottom margin
		result = MAX(size.height, 150.0f);	// at least one row
	}
	
	//result = result * 3;	
	
	return result;
}




// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    
    Book *aBook = [appDelegate.books objectAtIndex:indexPath.row];
	
    //To retrieve all the traffic incidents
	NSString *aBookMessage = [aBook.Message stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    //To get the DATE STRING
    NSString *subDate = [aBookMessage substringToIndex:([aBookMessage rangeOfString: @")"].location+1)];
    
    //To get the TIME STRING
    NSString *subTime = [aBookMessage substringWithRange: NSMakeRange(([aBookMessage rangeOfString: @")"].location)+1, ([aBookMessage rangeOfString: @" "].location)-5)];
    
    //To get the TRAFFIC INCIDENTS 
    NSString *subIncident = [aBookMessage substringFromIndex:([aBookMessage rangeOfString: @" "].location)+1];
    
    //To get the INCIDENT HEADER
    NSString *incidentType= [subIncident substringWithRange: NSMakeRange(0, [subIncident rangeOfString: @" "].location)];
    
    //To get everything data
    //NSString *subIncident = [aBookMessage substringWithRange: NSMakeRange(0, [aBookMessage rangeOfString: @" "].location)];
    
	//cell.textLabel.text = [subTime stringByAppendingString:subDate];
    
    //NSString * result;
    //result = [NSString stringWithFormat:@"%@\nReceived:\t%@\t\t\t%@", subIncident, subDate, subTime];
    
    if ([incidentType isEqualToString:@"Accident"]) {
        //Accident
        NSString *incidentHeader;
        incidentHeader = @"Accident";
        //Allocate image
        UIImage *image = [UIImage imageNamed:@"Accident.png"];
        cell.imageView.image = image;
        //Format and assign to cell
        NSString * result;
        result = [NSString stringWithFormat:@"%@\n%@\nReceived:\t\t%@\t\t%@", incidentHeader, subIncident, subDate, subTime];
        cell.textLabel.text = result;
        
    } else if ([incidentType isEqualToString:@"Roadworks"]) {
        //Roadworks
        NSString *incidentHeader;
        incidentHeader = @"Roadworks";
        //Allocate image
        UIImage *image = [UIImage imageNamed:@"Roadworks.png"];
        cell.imageView.image = image;
        //Format and assign to cell
        NSString * result;
        result = [NSString stringWithFormat:@"%@\n%@\nReceived:\t\t%@\t\t%@", incidentHeader, subIncident, subDate, subTime];
        cell.textLabel.text = result;
        
    } else if ([incidentType isEqualToString:@"Heavy"]) {
        //Heavy Traffic
        NSString *incidentHeader;
        incidentHeader = @"Heavy Traffic";
        //Allocate image
        UIImage *image = [UIImage imageNamed:@"Heavy Traffic.png"];
        cell.imageView.image = image;
        //Format and assign to cell
        NSString * result;
        result = [NSString stringWithFormat:@"%@\n%@\nReceived:\t\t%@\t\t%@", incidentHeader, subIncident, subDate, subTime];
        cell.textLabel.text = result;
        
    } else if ([incidentType isEqualToString:@"Vehicle"]) {
        //Vehicle breakdown
        NSString *incidentHeader;
        incidentHeader = @"Vehicle Breakdown";
        //Allocate image
        UIImage *image = [UIImage imageNamed:@"Vehicle Breakdown.png"];
        cell.imageView.image = image;
        //Format and assign to cell
        NSString * result;
        result = [NSString stringWithFormat:@"%@\n%@\nReceived:\t\t%@\t\t%@", incidentHeader, subIncident, subDate, subTime];
        cell.textLabel.text = result;
        
    } else if ([incidentType isEqualToString:@"Obstacle"]) {
        //Vehicle breakdown
        NSString *incidentHeader;
        incidentHeader = @"Obstacle";
        //Allocate image
        UIImage *image = [UIImage imageNamed:@"Obstacle.png"];
        cell.imageView.image = image;
        //Format and assign to cell
        NSString * result;
        result = [NSString stringWithFormat:@"%@\n%@\nReceived:\t\t%@\t\t%@", incidentHeader, subIncident, subDate, subTime];
        cell.textLabel.text = result;
        
    } 
    
	//cell.textLabel.text = aBookMessage;
	
	//UIImage *image =[UIImage imageNamed:@"trafficaccident-icon.png"];
	//cell.imageView.image = image;
	
	cell.textLabel.textColor= [UIColor whiteColor];
	cell.textLabel.numberOfLines = 0;
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	cell.textLabel.font = [UIFont boldSystemFontOfSize:15];
	self.tableView.backgroundColor = [UIColor colorWithRed: (27.0/255.0 ) green: (92.0/255.0) blue: (137.0/255.0) alpha:1.0];
	//self.tableView.opaque = NO;

    
    // Set up the cell
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
    /*
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
    // ...
    // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
    */
	// Navigation logic -- create and push a new view controller
	
	if(bdvController == nil)
		bdvController = [[BookDetailViewController alloc] initWithNibName:@"BookDetailViewController" bundle:[NSBundle mainBundle]];
	
	Book *aBook = [appDelegate.books objectAtIndex:indexPath.row];
	
	bdvController.aBook = aBook;

	[self.navigationController pushViewController:bdvController animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     //self.navigationItem.rightBarButtonItem = self.editButtonItem;
	
	appDelegate = (EZTrafficSGAppDelegate *)[[UIApplication sharedApplication] delegate];
	self.title = @"Traffic Incidents";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(refresh:)];
    
    
//    self.tableView.delegate=self;
//    self.tableView.dataSource=self;
      [self.tableView reloadData];

}




-(void)refresh:(id)sender{

	
	//Show Alert
	UIAlertView *waitAlert = [[UIAlertView alloc] initWithTitle:@"Traffic Incidents Loading...." 
														message:@"Latest traffic incident loaded."
													   delegate:nil 
											  cancelButtonTitle:nil 
											  otherButtonTitles:nil];
	
	[waitAlert show];
	
	
	NSLog(@"refresh is working.");
	
	
	
	NSURL *url = [[NSURL alloc] initWithString:@"http://fyp.ziox.us/arcgis.php?url=http://whereto.sg/test/lta/dissemICxml.xml"];
	NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	
	//Initialize the delegate.
	XMLParser *parser = [[XMLParser alloc] initXMLParser];
	
	//Set delegate
	[xmlParser setDelegate:parser];
	
	//Start parsing the XML file.
	BOOL success = [xmlParser parse];
	
	if(success)
		NSLog(@"No Errors");
	else
		NSLog(@"Error Error Error!!!");
	
	[waitAlert dismissWithClickedButtonIndex:0 animated:YES];
	[waitAlert release];
	[self viewDidLoad];
	
}

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
	[bdvController release];
	[appDelegate release];
    [super dealloc];
}


@end

