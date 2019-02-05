//
//  UICollectionView+MCPInsertions.m
//  Pods
//
//  Created by Mario Chinchilla on 29/9/15.
//
//

#import "UICollectionView+MCPInsertions.h"
#import "UICollectionView+MCPSafe.h"

@implementation UICollectionView (MCPInsertions)

-(void)mcp_safeDeleteItemsAtIndexPaths:(NSArray *)array{
    [self mcp_safeDeleteItemsAtIndexPaths:array withDataSource:nil];
}

-(void)mcp_safeDeleteItemsAtIndexPaths:(NSArray *)array withDataSource:(NSArray*)arrayDataSource{
    
    if(!array) return;
    BOOL mustCheckDataSource = arrayDataSource ? YES : NO; // Si no hay dataSource, no hará falta comprobarlo
    
    NSMutableArray *finalPaths = [NSMutableArray array];
    for(NSIndexPath *singlePath in array){
        // Si el indexPath esta contenido en el collectionView y NO hay que comprobar el dataSource o el dataSource y el número de items de la sección que índica el indexPath difieren en 1
        if([self mcp_isIndexPathContainedInCollection:singlePath] && (!mustCheckDataSource || arrayDataSource.count == [self numberOfItemsInSection:singlePath.section]-1))
            [finalPaths addObject:singlePath];
    }
    
    if(finalPaths.count)
        [self deleteItemsAtIndexPaths:finalPaths];
}

@end