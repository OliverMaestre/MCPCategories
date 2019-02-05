//
//  UITableView+MCPSafe.m
//  Pods
//
//  Created by Mario Chinchilla on 15/10/15.
//
//

#import "UITableView+MCPSafe.h"

@implementation UITableView (MCPSafe)

#pragma mark - Check methods

-(BOOL)mcp_isSectionContainedInTable:(NSUInteger)section{
    
    if(section < [self numberOfSections])
        return YES;
    return NO;
}

-(BOOL)mcp_isIndexPathContainedInTable:(NSIndexPath*)indexPath{
    
    if(![self mcp_isSectionContainedInTable:indexPath.section])
        return NO;
    
    if(indexPath.row < [self numberOfRowsInSection:indexPath.section] && indexPath.row >= 0)
        return YES;
    return NO;
}


@end
