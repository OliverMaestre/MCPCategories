//
//  NSString+MCPHandle.m
//  Pods
//
//  Created by Mario Chinchilla on 4/11/15.
//
//

#import "NSString+MCPHandle.h"
#import "NSString+MCPRange.h"
#import "NSMutableArray+MCPSafeAccess.h"

@implementation NSString (MCPHandle)

-(NSString*)mcp_splitStringWithCharactersCountsArray:(NSArray*)arrayCharacters{
    
    // Inicializamos el array que contendrá las subcadenas dependiendo de los valores pasados en el array pasado por parámetro
    NSMutableArray *HandletedStringArray = [NSMutableArray array];
    NSInteger actualRange = 0;
    
    // Iteramos
    for(NSNumber *charNumber in arrayCharacters){
        NSInteger nextChararactersCount = [charNumber integerValue];
        
        // Si el siguiente rango se va a salir del número de caracteres del propio string, lo establecemos al máximo
        // Por ejemplo si tenemos el string "Hola" y queremos obtener los 5 primeros caracteres, solo buscaremos los 4 primeros (Dado que no hay un 5º)
        if((actualRange+nextChararactersCount) >= [self length]){
            nextChararactersCount = [self length]-actualRange;
        }
        
        NSString *subString = [self substringWithRange:NSMakeRange(0+actualRange, nextChararactersCount)];
        [HandletedStringArray mcp_safeAddObject:subString];
        actualRange += nextChararactersCount;
    }
    
    return [HandletedStringArray componentsJoinedByString:@" "];
}

-(NSString*)mcp_safeStringByReplacingCharactersInRange:(NSRange)range withString:(NSString*)string{
    
    NSRange safeRange = [self mcp_safeRangeContainedInString:range];
    
    if(safeRange.length > 0){
        return [self stringByReplacingCharactersInRange:range withString:string];
    }
    
    return self;
}

@end
