//
//  Prescription.m
//  RememberMyMeds
//
//  Created by Edwin Villanueva on 8/16/13.
//  Copyright (c) 2013 Edwin Villanueva. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

-(id)init {
    self = [super init];
    if (self){
        self.name = @"Name Me";
    }
    return self;
}
-(id)initWithName:(NSString *)name {
    self = [super init];
    if (self){
        self.name = name;
    }
    return self;
}

@end
