//
//  UITableView+MCPSafe.h
//  Pods
//
//  Created by Mario Chinchilla on 15/10/15.
//
//

#import <UIKit/UIKit.h>

@interface UITableView (MCPSafe)

-(BOOL)mcp_isSectionContainedInTable:(NSUInteger)section;
-(BOOL)mcp_isIndexPathContainedInTable:(NSIndexPath*)indexPath;

@end
