//
//  NSString+MCPHandle.h
//  Pods
//
//  Created by Mario Chinchilla on 4/11/15.
//
//

#import <Foundation/Foundation.h>

@interface NSString (MCPHandle)

/**
 *  Método que separa con espacios un string mediante un array de índices
 *
 *  @param arrayCharacters Un array que contendra valores enteros a partir de los cuales se insertarán espacios. 
 *  @note  Este array debe contener valores enteros, cualquier otro valor puede ocasionar resultados indeseados.
 *
 *  @return El string, partido con espacios en los índices que se deseaban
 */
-(NSString*)mcp_splitStringWithCharactersCountsArray:(NSArray*)arrayCharacters;

/**
 *  Método que devuelve un string con los carácteres del rango pasado por parámetro sustituidos por el string pasado en el otro paráemtro
 *
 *  @param range  Rango donde se quiere sustituir el string
 *  @param string String por el que se quiere sutitutir
 *
 *  @return El string modificado o el string sin modificar si se ha capturado que pudo haber alguna posible excepción.
 */
-(NSString*)mcp_safeStringByReplacingCharactersInRange:(NSRange)range withString:(NSString*)string;

@end
