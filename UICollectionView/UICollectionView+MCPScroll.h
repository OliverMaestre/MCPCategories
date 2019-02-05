//
//  UICollectionView+MCPScroll.h
//
//  Created by Mario Chinchilla on 25/9/15.
//  Copyright © 2015 Mario. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (MCPScroll)

-(BOOL)mcp_safeScrollToItemAtIndexPath:(nonnull NSIndexPath*)indexPath atScrollPosition:(UICollectionViewScrollPosition)position animated:(BOOL)animated;
-(BOOL)mcp_safeScrollToLastIndexOfSection:(NSInteger)section atScrollPosition:(UICollectionViewScrollPosition)scrollPosition animated:(BOOL)animated;

@end
