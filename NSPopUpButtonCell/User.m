//
//  User.m
//  NSPopUpButtonCell
//
//  Created by John John Doe on 27.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "User.h"

@implementation User

- (id)init {
    self = [super init];
    if (self) {
        m_name = @"";
    }
    return self;
}

- (id)initWithName:(NSString*)name {
    self = [super init];
    if (self) {
        m_name = name;
    }
    return self;
}

@synthesize name = m_name;

- (NSString*)description {
	return [NSString stringWithFormat:@"<%@> name = %@", self.className, m_name];
}

@end
