//
//  Book.h
//  EZTrafficSG
//
//  Created by administrator on 6/2/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Book : NSObject {
	
	NSInteger bookID;
	NSString *XCoor;	//Same name as the Entity Name.
	NSString *YCoor;	//Same name as the Entity Name.
	NSString *Type;	   //Same name as the Entity Name.
	NSString *Message;	   //Same name as the Entity Name.

}

@property (nonatomic, readwrite) NSInteger bookID;
@property (nonatomic, retain) NSString *XCoor;
@property (nonatomic, retain) NSString *YCoor;
@property (nonatomic, retain) NSString *Type;
@property(nonatomic,retain)NSString *Message;

@end
