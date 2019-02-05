//
//  UICollectionView+MCPSafe.h
//
//  Created by Mario Chinchilla on 25/9/15.
//  Copyright © 2015 Mario. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (MCPSafe)

-(BOOL)mcp_isSectionContainedInCollection:(NSUInteger)section;
-(BOOL)mcp_isIndexPathContainedInCollection:(NSIndexPath*)indexPath;

@end
