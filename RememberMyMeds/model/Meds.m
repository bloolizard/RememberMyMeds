//
//  Meds.m
//  RememberMyMeds
//
//  Created by Edwin Villanueva on 8/16/13.
//  Copyright (c) 2013 Edwin Villanueva. All rights reserved.
//

#import "Meds.h"

@implementation Meds

-(NSMutableArray *)medlist{
    if (!_medlist){
        Prescription *script1 = [[Prescription alloc] init];
        _medlist = [NSMutableArray arrayWithObjects:script1.name, nil];
    }
    return _medlist;
}
-(void) addRXtoBox:(Prescription *)script{
    [self.medlist addObject:script.name];
    
}


@end
