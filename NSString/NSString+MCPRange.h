//
//  NSString+MCPRange.h
//  Pods
//
//  Created by Mario on 23/9/15.
//
//

#import <Foundation/Foundation.h>

@interface NSString (MCPRange)

/**
 *  Método que devuelve el rango admisible para el string sin salirse de sus índices
 *
 *  @param range Rango del cual se desea comprobar y obtener un rango dentro de los índices
 *
 *  @return Un rango que queda dentro de los índices del string o el mismo rango si este no se salía de los índices previamente
 */
-(NSRange)mcp_safeRangeContainedInString:(NSRange)range;

/**
 *  Método que devuelve el rango del string al completo
 *
 *  @return Rango del string entero
 */
-(NSRange)mcp_fullStringRange;

@end
