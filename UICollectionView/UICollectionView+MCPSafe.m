//
//  UICollectionView+MCPSafe.h
//
//  Created by Mario Chinchilla on 25/9/15.
//  Copyright © 2015 Mario. All rights reserved.
//

#import "UICollectionView+MCPSafe.h"

@implementation UICollectionView (MCPSafe)

#pragma mark - Check methods

-(BOOL)mcp_isSectionContainedInCollection:(NSUInteger)section{
    
    if(section < [self numberOfSections])
        return YES;
    return NO;
}

-(BOOL)mcp_isIndexPathContainedInCollection:(NSIndexPath*)indexPath{
    
    if(![self mcp_isSectionContainedInCollection:indexPath.section])
        return NO;
    
    if(indexPath.row < [self numberOfItemsInSection:indexPath.section] && indexPath.row >= 0)
        return YES;
    return NO;
}



@end
