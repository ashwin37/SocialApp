//
//  ViewController.m
//  SocialApp
//
//  Created by Rakesh Viparla on 12/7/16.
//  Copyright © 2016 adroit37. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)dismissKeyBoardBtn:(id)sender {
    
    [self resignFirstResponder];
}


- (IBAction)cameraBtn:(id)sender {
    
    imgPicker = [[UIImagePickerController alloc]init];
    imgPicker.delegate = self;
    [imgPicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:imgPicker animated:YES completion:NULL];
}

- (IBAction)libraryBtn:(id)sender {
    
    imgPicker = [[UIImagePickerController alloc]init];
    imgPicker.delegate = self;
    [imgPicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:imgPicker animated:YES completion:NULL];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    img = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    [self.imgView setImage:img];
    [self dismissViewControllerAnimated:YES completion:NULL];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated: YES completion:NULL];
}

- (IBAction)fbBtn:(id)sender {
    
    composer = [[SLComposeViewController alloc]init];
    composer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [composer setInitialText:[NSString stringWithFormat:@"%@", self.txtFld.text]];
    [composer addImage:self.imgView.image];
    [self presentViewController:composer animated:YES completion:NULL];
}

- (IBAction)twitterBtn:(id)sender {
    
    composer = [[SLComposeViewController alloc]init];
    composer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [composer setInitialText:[NSString stringWithFormat:@"%@", self.txtFld.text]];
    [composer addImage:self.imgView.image];
    [self presentViewController:composer animated:YES completion:NULL];
}

@end