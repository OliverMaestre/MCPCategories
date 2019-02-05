//
//  NSString+MCPValidations.h
//  PlanetMediaTest
//
//  Created by Mario Chinchilla Plaza on 30/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MCPValidations)

/**
 *  Método que nos dice si un string esta contenido en el propio receptor (Este string). Este método NO TIENE en cuenta mayusculas o minúsculas.
 *
 *  @param searchString String que queremos saber si esta contenido
 *
 *  @return YES si esta contenido, NO de lo contrario
 */
-(BOOL)mcp_sensitiveContainsString:(NSString*)searchString;

/**
 *  Método que nos dice si un string esta contenido en el propio receptor (Este string). Este método TIENE en cuenta mayusculas o minúsculas.
 *
 *  @param searchString String que queremos saber si esta contenido
 *
 *  @return YES si esta contenido, NO de lo contrario
 */
-(BOOL)mcp_unsensitiveContainsString:(NSString*)searchString;

+(BOOL)mcp_isEmptyOrNilString:(NSString*)string;

@end
