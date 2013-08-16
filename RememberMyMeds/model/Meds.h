//
//  Meds.h
//  RememberMyMeds
//
//  Created by Edwin Villanueva on 8/16/13.
//  Copyright (c) 2013 Edwin Villanueva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"

@interface Meds : NSObject

@property (nonatomic) NSMutableArray *medlist;



-(void) addRXtoBox:(Prescription *)script;


@end
