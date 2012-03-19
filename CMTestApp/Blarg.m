//
//  Blarg.m
//  CMTestApp
//
//  Created by Adam Hinz on 3/19/12.
//  Copyright (c) 2012 Azavea. All rights reserved.
//

#import "Blarg.h"

@implementation Blarg

@synthesize idata;

-(id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        self.idata = [aDecoder decodeObjectForKey:@"idata"];
    }
    
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.idata forKey:@"idata"];
    
    [super encodeWithCoder:aCoder];
}

@end
