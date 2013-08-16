//
//  Prescription.h
//  RememberMyMeds
//
//  Created by Edwin Villanueva on 8/16/13.
//  Copyright (c) 2013 Edwin Villanueva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *strength;
@property (nonatomic) NSString *dosage;
@property (nonatomic) NSString *direction;
@property (nonatomic) int quanity;

-(id)initWithName:(NSString *)name;


@end
