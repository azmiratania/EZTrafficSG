//
//  XMLParser.h
//  EZTrafficSG
//
//  Created by administrator on 6/2/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class EZTrafficSGAppDelegate, Book;

@interface XMLParser : NSObject {
	
	NSMutableString *currentElementValue;
	
	EZTrafficSGAppDelegate *appDelegate;
	Book *aBook; 
}

- (XMLParser *) initXMLParser;

@end

