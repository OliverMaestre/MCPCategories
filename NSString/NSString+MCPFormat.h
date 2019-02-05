//
//  NSString+MCPFormat.h
//  Pods
//
//  Created by Mario Chinchilla on 13/11/15.
//
//

#import <Foundation/Foundation.h>

@interface NSString (MCPFormat)

/**
 *  Método que formatea el string para ponerle separaciones dependiendo de la localización del teléfono.
 *  Así, por ejemplo, el número 99999 pasaría a ser 99.999 en España y 99,999 en EEUU
 *
 *  @return El string formateado con la localización oportuna.
 */
-(NSString*)mcp_formattedString;

/**
 *  Método que devuelve una string formateada con un número de segundos pasado por parámetro con el formato hh:mm:ss
 *
 *  @param totalSeconds Segundos con los cuales se quiere formar el string
 *
 *  @return String formateado con el formato hh:mm:ss con el valor pasado por el parámetro.
 */
+(NSString*)mcp_getTimeFormattedStringWithSeconds:(NSInteger)totalSeconds;

@end
