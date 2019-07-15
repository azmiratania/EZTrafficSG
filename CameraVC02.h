//
//  CameraVC02.h
//  EZTrafficSG
//
//  Created by administrator on 12/2/12.
//  Copyright 2012 DMIT. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CameraVC02 : UIViewController {

	IBOutlet UIImageView *iv;
	UIImage *img;
	IBOutlet UILabel *lblcamlocation;
	
}

-(void)setMainImage:(UIImage *)_img;

@end
