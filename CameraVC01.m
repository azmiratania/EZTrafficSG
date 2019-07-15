//
//  CameraVC01.m
//  EZTrafficSG
//
//  Created by administrator on 12/2/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import "CameraVC01.h"
#import "EZTrafficSGViewController.h"


@implementation CameraVC01


#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];
	
	camlocation = [[NSArray alloc] initWithObjects:@"KPE/ECP",
				   @"Kallang Bahru",
				   @"KPE/PIE",
				   @"Kallang Way Flyover",
				   @"Defu Flyover",
				   @"KPE",
				   @"Moulmein Flyover",
				   @"Braddell Flyover",
				   @"St George Road",
				   @"Ang Mo Kio Ave 5 Flyover",
				   @"Woodlands Causeway (Towards Johor)",
				   @"Woodlands Checkpoint (Towards BKE)",
				   @"Chantek Flyover",
				   @"Diary Farm Flyover",
				   @"Laguna Flyover",
				   @"Marine Parade Flyover",
				   @"Tanjong Katong Flyover",
				   @"Tanjong Rhu",
				   @"Benjamin Sheares Bridge",
				   @"Marina Bay",
				   @"Alexandra Road",
				   @"Keppel Viaduct",
				   @"Tuas Second Link",
				   @"Lower Delta Road",
				   @"Dover Road (Towards Jurong)",
				   @"Dover Road (Towards City)",
				   @"Pandan Gardens",
				   @"Tuas Ave 8 Exit",
				   @"2nd Link [Tuas 2nd Link] (Towards AYE)",
				   @"Towards Telok Blangah",
				   @"Towards Telok Blangah",
				   @"Towards Sentosa",
				   @"Bedok North",
				   @"Eunos Flyover",
				   @"Kallang",
				   @"Woodsville Flyover",
				   @"Kim Keat",
				   @"Thomson Road",
				   @"Mount Pleasant",
				   @"Adam Road",
				   @"Bukit Timah Expressway",
				   @"Jurong West St 81",
				   @"Upper Changi Flyover",
				   @"Rivervale Drive",
				   @"Seletar Flyover",
				   @"Choa Chu Kang",
				   @"Lentor Flyover",
				   @"Woodlands South Flyover",
				   nil];
	self.title = @"Traffic Camera";

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


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
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [camlocation count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
	
	cell.text= [camlocation objectAtIndex:indexPath.row];
	cell.textLabel.textColor= [UIColor whiteColor];
	cell.textLabel.textAlignment = UITextAlignmentLeft;
//	cell.textLabel.shadowColor = [UIColor whiteColor];
//	cell.textLabel.shadowOffset = CGSizeMake(0, 1);
	cell.textLabel.numberOfLines = 0;
	cell.accessoryType = UITableViewRowAnimationFade;
	cell.accessoryType = UITableViewRowAnimationMiddle;
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	cell.textLabel.font = [UIFont boldSystemFontOfSize:18];
	 //cell.textLabel.font = [UIFont systemFontOfSize:12.0];
	//cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:14.0]; 
	self.tableView.backgroundColor = [UIColor colorWithRed: (27.0/255.0 ) green: (92.0/255.0) blue: (137.0/255.0) alpha:1.0];
	//self.tableView.opaque = NO;
	
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
    
	CameraVC02 *cam02 = [[CameraVC02 alloc] initWithNibName:@"CameraVC02" bundle:nil];
	
	[cam02 setTitle:[camlocation objectAtIndex:indexPath.row]];
	
	
	NSData * imageData;
	//cell.image = [UIImage imageWithData: imageData];
	//[imageData release];
	
	
	if (indexPath.row == 0){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/1001.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 1){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/1002.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 2){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/1003.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 3){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/1004.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 4){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/1005.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 5){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/1006.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 6){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/1701.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 7){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/1703.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 8){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/1705.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 9){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/2701.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 10){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/2702.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 11){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/2703.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 12){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/2704.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 13){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/2705.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 14){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/3793.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 15){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/3795.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 16){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/3796.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 17){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/3797.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 18){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/3798.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 19){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/3799.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 20){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/4701.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 21){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/4702.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 22){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/4703.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 23){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/4704.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 24){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/4706.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 25){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/4708.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 26){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/4710.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 27){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/4712.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 28){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/4713.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 29){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/4798.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 30){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/4799.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 31){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/5794.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 32){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/5795.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 33){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/5798.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 34){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/5799.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 35){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/6701.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 36){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/6703.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 37){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/6704.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 38){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/6705.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 39){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/6706.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 40){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/6708.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 41){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/7791.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 42){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/7796.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 43){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/7798.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 44){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/8701.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 45){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/9701.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}else if (indexPath.row == 46){
		imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://www.whereto.sg/lta/images/9703.jpg"]];
		[cam02 setMainImage:[UIImage imageWithData: imageData]];
		[imageData release];
	}

	
	UIBarButtonItem *newBackButton = [[UIBarButtonItem alloc] initWithTitle: @"Back" style: UIBarButtonItemStyleBordered target: nil action: nil];
	
	[[self navigationItem] setBackBarButtonItem: newBackButton];
	
	[newBackButton release];
	
	[self. navigationController pushViewController:cam02 animated:YES];
	[cam02 release];
	
	// Navigation logic may go here. Create and push another view controller.
    /*
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
    // ...
    // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
    */
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
    [super dealloc];
}


@end

