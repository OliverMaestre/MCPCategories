//
//  UICollectionView+MCPScroll.m
//
//  Created by Mario Chinchilla on 25/9/15.
//  Copyright © 2015 Mario. All rights reserved.
//

#import "UICollectionView+MCPScroll.h"
#import "UICollectionView+MCPSafe.h"

@implementation UICollectionView (MCPScroll)

#pragma mark - Scroll methods

-(BOOL)mcp_safeScrollToItemAtIndexPath:(nonnull NSIndexPath*)indexPath atScrollPosition:(UICollectionViewScrollPosition)position animated:(BOOL)animated{
    
    if([self mcp_isIndexPathContainedInCollection:indexPath]){
        [self scrollToItemAtIndexPath:indexPath atScrollPosition:position animated:animated];
        return YES;
    }
    return NO;
}

-(BOOL)mcp_safeScrollToLastIndexOfSection:(NSInteger)section atScrollPosition:(UICollectionViewScrollPosition)scrollPosition animated:(BOOL)animated{
    
    NSInteger finalItemIndex = [self numberOfItemsInSection:section]-1;
    NSIndexPath *lastPath = [NSIndexPath indexPathForRow:finalItemIndex inSection:section];
    
    return [self mcp_safeScrollToItemAtIndexPath:lastPath atScrollPosition:scrollPosition animated:animated];
}

@end
