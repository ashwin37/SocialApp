//
//  ViewController.h
//  SocialApp
//
//  Created by Rakesh Viparla on 12/7/16.
//  Copyright © 2016 adroit37. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate> // These 2 Delegates are used for redirecting to library in order to help user to pick or select the images !!
{
    UIImagePickerController *imgPicker;
    UIImage *img;
    
    SLComposeViewController *composer;
}

@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UITextField *txtFld;

@end

