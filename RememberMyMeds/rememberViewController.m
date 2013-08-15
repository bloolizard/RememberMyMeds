//
//  rememberViewController.m
//  RememberMyMeds
//
//  Created by Edwin Villanueva on 8/14/13.
//  Copyright (c) 2013 Edwin Villanueva. All rights reserved.
//

#import "rememberViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface rememberViewController ()

@end

@implementation rememberViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //setting up delegates
    self.medName.delegate = self;
    
    //make the corners of my textview round
    self.pharmTextView.layer.cornerRadius = 7.5;
    self.pharmTextView.text = @"Remember my directions";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    textField.text = @"";
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)hideKeyboard:(UIButton *)sender {
    [self.medName resignFirstResponder];
}
@end
