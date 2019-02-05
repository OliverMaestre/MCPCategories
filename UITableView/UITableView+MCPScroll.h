//
//  UITableView+MCPScroll.h
//  Pods
//
//  Created by Mario Chinchilla on 15/10/15.
//
//

#import <UIKit/UIKit.h>

@interface UITableView (MCPScroll)

-(BOOL)mcp_safeScrollToRowAtIndexPath:(nonnull NSIndexPath*)indexPath atScrollPosition:(UITableViewScrollPosition)position animated:(BOOL)animated;
-(BOOL)mcp_safeScrollToLastIndexOfSection:(NSInteger)section atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated;

@end
