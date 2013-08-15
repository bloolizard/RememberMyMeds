//
//  rememberViewController.h
//  RememberMyMeds
//
//  Created by Edwin Villanueva on 8/14/13.
//  Copyright (c) 2013 Edwin Villanueva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface rememberViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *medName;
@property (weak, nonatomic) IBOutlet UITextView *pharmTextView;

- (IBAction)hideKeyboard:(UIButton *)sender;

@end
