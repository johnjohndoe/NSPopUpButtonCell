//
//  AppDelegate.m
//  NSPopUpButtonCell
//
//  Created by John John Doe on 27.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "User.h"



#pragma mark
@implementation AppDelegate


#pragma mark - Properties
@synthesize window = _window;
@synthesize tableView = m_tableView;
@synthesize popUpButtonCell = m_popUpButtonCell;
@synthesize users = m_users;
@dynamic sexes;

- (NSArray*)sexes {
	static NSArray* sexes = nil;
	if (!sexes) {
		sexes = [NSArray arrayWithObjects:@"female", @"male", nil];
	}
	return sexes;
}


#pragma mark -
- (void)dealloc {
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification*)notification {
	[self willChangeValueForKey:@"users"];
	m_users = [NSMutableArray array];
	[m_users addObject:[[User alloc] initWithName:@"Brian"]];
	[m_users addObject:[[User alloc] initWithName:@"Fabian"]];
	[m_users addObject:[[User alloc] initWithName:@"Thomas"]];
	[m_users addObject:[[User alloc] initWithName:@"Jessy"]];
	[self didChangeValueForKey:@"users"];
}


- (void)printSelection {
	// FIXME: Changing the order of a table column is a problem.
	NSIndexSet* selectedRowIndices = [m_tableView selectedRowIndexes];
	if (!selectedRowIndices || selectedRowIndices.count > 1) {
		return;
	}
	User* selectedUser = [m_users objectAtIndex:selectedRowIndices.firstIndex];
	NSInteger indexOfSelectedItem = [m_popUpButtonCell indexOfSelectedItem];
	NSLog(@"%@ %@ %@ --> %ld", self.className, NSStringFromSelector(_cmd), selectedUser, indexOfSelectedItem); /* DEBUG LOG */	
}


#pragma mark - IBAction

- (IBAction)selectedSexChanged:(id)sender {
	NSLog(@"%@ %@ %@", self.className, NSStringFromSelector(_cmd), sender); /* DEBUG LOG */
	[self printSelection];
}

#pragma mark - NSMenuDelegate

- (void)menuDidClose:(NSMenu*)menu {
	NSLog(@"%@ %@", self.className, NSStringFromSelector(_cmd)); /* DEBUG LOG */
	[self printSelection];
}


@end
