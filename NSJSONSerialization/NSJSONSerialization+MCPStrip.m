//
//  NSJSONSerialization+MCPStrip.m
//  Pods
//
//  Created by Mario Chinchilla on 12/11/15.
//
//

#import "NSJSONSerialization+MCPStrip.h"

#import "NSString+MCPHandle.h"

@implementation NSJSONSerialization (MCPStrip)

+(id)mcp_JSONObjectWithData:(NSData *)data options:(NSJSONReadingOptions)opt error:(NSError **)error tryingToStripDirt:(BOOL)strippingDirt{

    NSDictionary *dictJSON = [NSJSONSerialization JSONObjectWithData:data options:opt error:error];
    // Si no hemos podido obtener el diccionario JSON oportuno, intentamos borrar la suciedad que pueda haber en el NSData si el parámetro lo permite
    if(!dictJSON && strippingDirt){
        *error = nil; // Reiniciamos el error, ya que no sabemos si el quitar la suciedad va o no a funcionar
        NSString *stringData = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        // El servicio puede que venga con texto, si es así devolvemos un JSON vacío.
        if ([stringData rangeOfString:@"{"].location == NSNotFound) {
            return @{};
        }
        
        /**** Strip hasta la primera llave ****/
        NSInteger JSONStartLocation = [stringData rangeOfString:@"{"].location;
        NSRange startRange = NSMakeRange(0, JSONStartLocation);
        stringData = [stringData mcp_safeStringByReplacingCharactersInRange:startRange withString:@""];
        
        /**** Strip a partir de la última llave ****/
        NSInteger JSONEndLocation = [stringData rangeOfString:@"}" options:NSBackwardsSearch].location + 1;
        stringData = [stringData substringToIndex:JSONEndLocation];
        
        dictJSON = [NSJSONSerialization JSONObjectWithData:[stringData dataUsingEncoding:NSUTF8StringEncoding] options:opt error:error]; // Intentamos recuperar de nuevo los datos
    }

    return dictJSON;
}

@end
