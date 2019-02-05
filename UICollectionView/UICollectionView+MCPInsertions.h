//
//  UICollectionView+MCPInsertions.h
//  Pods
//
//  Created by Mario Chinchilla on 29/9/15.
//
//

#import <UIKit/UIKit.h>

@interface UICollectionView (MCPInsertions)

/**
 *  Método que elimina una serie de items pasados por parámetro en un Array. 
 *
 *  @warning Este método solo comprueba que los índices pasados no se salgan del array de items que tiene el collectionView, pero no asegura que el número de items del dataSource y el número de 
 *  items del collectionView coincidan al suprimir un item de este último, con lo que si estos no coinciden (Por haber borrado del dataSource un elemento antes de borrar los items del 
 *  collectionView) puede causar un Crash del tipo "Invalid update: invalid number of items in section"
 *
 *  @param array Array de NSIndexPath de los índices de los items que se quieren eliminar
 *
 *  @see mcpsafeDeleteItemsAtIndexPaths:withDataSource:
 */
-(void)mcp_safeDeleteItemsAtIndexPaths:(NSArray *)array;

/**
 *  Método que elimina una serie de items pasados por parámetro en un Array. Este método además comprueba que el número de items del dataSource y de items del collectionView coincidan para que 
 *  ambos queden actualizados a la par y no se produzcan crashes derivados del collectionView. 
 *
 *  @note Si se quiere ignorar el dataSource se puede pasar un nil para no tenerlo en cuenta lo que tendría el mismo efecto que llamar al método 'mcpsafeDeleteItemsAtIndexPaths:'
 *
 *  @param array Array de NSIndexPath de los índices de los items que se quieren eliminar
 *
 *  @see 'mcpsafeDeleteItemsAtIndexPaths:'
 */
-(void)mcp_safeDeleteItemsAtIndexPaths:(NSArray *)array withDataSource:(NSArray*)arrayDataSource;

@end
