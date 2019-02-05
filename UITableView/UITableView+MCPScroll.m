//
//  UITableView+MCPScroll.m
//  Pods
//
//  Created by Mario Chinchilla on 15/10/15.
//
//

#import "UITableView+MCPScroll.h"
#import "UITableView+MCPSafe.h"

@implementation UITableView (MCPScroll)

#pragma mark - Scroll methods

-(BOOL)mcp_safeScrollToRowAtIndexPath:(nonnull NSIndexPath*)indexPath atScrollPosition:(UITableViewScrollPosition)position animated:(BOOL)animated{
    
    if([self mcp_isIndexPathContainedInTable:indexPath]){
        [self scrollToRowAtIndexPath:indexPath atScrollPosition:position animated:animated];
        return YES;
    }
    return NO;
}

-(BOOL)mcp_safeScrollToLastIndexOfSection:(NSInteger)section atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated{
    
    NSInteger finalItemIndex = [self numberOfRowsInSection:section]-1;
    NSIndexPath *lastPath = [NSIndexPath indexPathForRow:finalItemIndex inSection:section];
    
    return [self mcp_safeScrollToRowAtIndexPath:lastPath atScrollPosition:scrollPosition animated:animated];
}

@end
