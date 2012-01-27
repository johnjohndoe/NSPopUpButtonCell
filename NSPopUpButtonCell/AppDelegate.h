//
//  AppDelegate.h
//  NSPopUpButtonCell
//
//  Created by John John Doe on 27.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject<NSApplicationDelegate> {

  @private
	NSMutableArray* m_users;
	NSTableView* m_tableView;
	NSPopUpButtonCell* m_popUpButtonCell;
}

@property (assign) IBOutlet NSWindow* window;
@property (assign) IBOutlet NSTableView* tableView;
@property (assign) IBOutlet NSPopUpButtonCell* popUpButtonCell;
@property (assign) NSMutableArray* users;
@property (assign) NSArray* sexes;

@end
