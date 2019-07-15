//
//  Book.m
//  EZTrafficSG
//
//  Created by administrator on 6/2/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import "Book.h"


@implementation Book

@synthesize XCoor, YCoor, Type,Message, bookID;



- (void) dealloc {
	
	[XCoor release];
	[YCoor release];
	[Type release];
	[Message release];
	[super dealloc];
}

@end

