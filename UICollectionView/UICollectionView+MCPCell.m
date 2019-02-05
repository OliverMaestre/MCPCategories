//
//  UICollectionView+MCPCell.m
//  Pods
//
//  Created by Mario Chinchilla on 29/9/15.
//
//

#import "UICollectionView+MCPCell.h"
#import "UICollectionView+MCPSafe.h"

@implementation UICollectionView (MCPCell)

-(UICollectionViewCell*)mcp_safeCellForItemAtIndexPath:(NSIndexPath*)indexPath{
    
    if(![self mcp_isIndexPathContainedInCollection:indexPath]) return nil;
    
    return [self cellForItemAtIndexPath:indexPath];
}

@end
