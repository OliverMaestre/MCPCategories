//
//  UICollectionView+MCPCell.h
//  Pods
//
//  Created by Mario Chinchilla on 29/9/15.
//
//

#import <UIKit/UIKit.h>

@interface UICollectionView (MCPCell)

-(UICollectionViewCell*)mcp_safeCellForItemAtIndexPath:(NSIndexPath*)indexPath;

@end
