//
//  NSUserDefaults+MCPSafeCoding.m
//  Pods
//
//  Created by Mario Chinchilla on 2/12/15.
//
//

#import "NSUserDefaults+MCPSafeCoding.h"
#import "NSString+MCPValidations.h"

@implementation NSUserDefaults (MCPSafeCoding)

-(BOOL)mcp_safeArchiveObject:(__nonnull id)objectToEncode forKey:(NSString* _Nonnull)key{
    // Validamos el objeto y la clave pasada
    if(![self mcp_checkIfObjectIsSafeForArchiving:objectToEncode]) return NO;
    if([NSString mcp_isEmptyOrNilString:key]) return NO;
    

        
    
    // Si hemos pasado todas las validaciones, guardamos el objeto
    NSData *dataToArchive = [NSKeyedArchiver archivedDataWithRootObject:objectToEncode];
    [[NSUserDefaults standardUserDefaults] setObject:dataToArchive forKey:key];
    BOOL writeWasSuccesful = [[NSUserDefaults standardUserDefaults] synchronize];
    
    return writeWasSuccesful;
}

-(__nullable id)mcp_safeRetrieveObjectForKey:(NSString* _Nonnull)key{
    if([NSString mcp_isEmptyOrNilString:key]) return nil;
    
    id retrievedObject = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if([retrievedObject isKindOfClass:[NSData class]]){
        NSData *retrievedData = (NSData*)retrievedObject;
        retrievedObject = [NSKeyedUnarchiver unarchiveObjectWithData:retrievedData];
    }
    
    return retrievedObject;
}

#pragma mark - Check methods

-(BOOL)mcp_checkIfObjectIsSafeForArchiving:(id)objectToEncode{
    if(!objectToEncode || ![objectToEncode conformsToProtocol:@protocol(NSCoding)]) return NO;
    
    if([objectToEncode isKindOfClass:[NSArray class]]){
        NSArray *arrayToEncode = (NSArray*)objectToEncode;
        if(![self mcp_checkIfArrayIsSafeForArchiving:arrayToEncode])
            return NO;
    }else if([objectToEncode isKindOfClass:[NSDictionary class]]){
        NSDictionary *dictToEncode = (NSDictionary*)objectToEncode;
        if(![self mcp_checkIfDictionaryIsSafeForArchiving:dictToEncode])
            return NO;
    }
    
    return YES;
}

-(BOOL)mcp_checkIfArrayIsSafeForArchiving:(NSArray*)arrayToArchive{
    if(!arrayToArchive) return NO; // Podemos permitir escribir en los defaults un array vacío, pero no uno a nil
    
    for(id singleObject in arrayToArchive){
        if(![singleObject conformsToProtocol:@protocol(NSCoding)])
            return NO;
    }
    
    return YES; // Si hemos llegado aquí, todos los objetos del array responden al protocolo oportuno
}

-(BOOL)mcp_checkIfDictionaryIsSafeForArchiving:(NSDictionary*)dictToArchive{
    if(!dictToArchive) return NO;
    
    BOOL valuesAreSafeForArchiving = [self mcp_checkIfArrayIsSafeForArchiving:dictToArchive.allValues];
    BOOL keysAreSafeForArchiving = [self mcp_checkIfArrayIsSafeForArchiving:dictToArchive.allKeys];
    
    return valuesAreSafeForArchiving && keysAreSafeForArchiving;
}

@end
