//
//  NSArray+MCPSafeAccess.h
//
//  Created by Mario Chinchilla Plaza on 28/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (MCPSafeAccess)

/**
 *  Método que devuelve el objeto contenido por el array en el índice pasado por parámetro o nil si el índice esta fuera del rango de este.
 *
 *  @param index Índice en el cuál se quiere obtener el objeto
 *
 *  @return El objeto contenido en el índice pasado por parámetro o nil si el índice esta fuera del rango del array
 */
-(id)mcp_safeObjectAtIndex:(NSUInteger)index;

/**
 *  Método que devuelve un subarray con el rango pasado por parámetro. Si el rango pasado se escapa del total de objetos del array se reducirá hasta el máximo. Si el rango pasado por
 *  parámetro comienza fuera de los límites del array, este método devuelve nil.
 *
 *  @param range Rango del cual se quiere obtener un subarray
 *
 *  @return Array de los elementos contenidos en el rango o nil si el rango esta fuera de los límites del array.
 */
-(NSArray*)mcp_safeSubarrayWithRange:(NSRange)range;

/**
 *  Método que devuelve si un índice pasado por parámetro esta conteidoen el rango del array
 *
 *  @param index Índice que se quiere comprobar si esta dentro del rango del array
 *
 *  @return YES si el índice esta dentro del rango, NO de lo contrario
 */
-(BOOL)isIndexContainedInRange:(NSInteger)index;

@end
