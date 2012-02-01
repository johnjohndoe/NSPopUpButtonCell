//
//  User.h
//  NSPopUpButtonCell
//
//  Created by John John Doe on 27.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject {

  @private
	NSString* m_name;
	NSString* m_sex;
}

@property (assign) NSString* name;
@property (assign) NSString* sex;

- (id)initWithName:(NSString*)name;

@end
