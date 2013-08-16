//
//  StartViewController.h
//  RememberMyMeds
//
//  Created by Edwin Villanueva on 8/14/13.
//  Copyright (c) 2013 Edwin Villanueva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StartViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *medications;


@end
