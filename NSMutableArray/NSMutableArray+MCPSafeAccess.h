//
//  NSMutableDictionary+MCPSafeAccess.h
//  PlanetMediaTest
//
//  Created by Mario Chinchilla Plaza on 28/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (MCPSafeAccess)

#pragma mark - Add Objects methods

/**
 *  Método que añade el objeto pasado por parámetro si este no es nil.
 *
 *  @param object Objeto que se desea añadir al array
 *
 *  @return YES si se ha podido añadir el objeto al array, NO de lo contrario.
 */
-(BOOL)mcp_safeAddObject:(id)object;

/**
 *  Método que añade los objetos contenidos en un array pasado por parámetro si este no es nil y tiene objetos
 *
 *  @param array Array que contiene los objetos que se desean añadir al final del receptor
 *
 *  @return YES si se han podido añadir los objetos, NO de lo contrario.
 */
-(BOOL)mcp_safeAddObjectsFromArray:(NSArray*)array;

#pragma mark - Remove Objects methods

/**
 *  Método que elimina el objeto pasado por parámetro si este se encuentra en el array, de otro modo, no hace nada.
 *
 *  @param object Objeto que se desea eliminar del array.
 *
 *  @return YES si se ha podido eliminar el objeto, NO de lo contrario.
 */
-(BOOL)mcp_safeRemoveObject:(id)object;

/**
 *  Método que elimina el objeto establecido en el índice pasado por parámetro siempre y cuando este no se salga de los límites del array, de otro modo, no hace nada.
 *
 *  @param index Índice en el cual se quiere eliminar el objeto
 *
 *  @return YES si se ha podido eliminar el objeto, NO de lo contrario.
 */
-(BOOL)mcp_safeRemoveObjectAtIndex:(NSInteger)index;

@end
