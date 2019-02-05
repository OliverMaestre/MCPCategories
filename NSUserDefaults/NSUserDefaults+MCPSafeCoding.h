//
//  NSUserDefaults+MCPSafeCoding.h
//  Pods
//
//  Created by Mario Chinchilla on 2/12/15.
//
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (MCPSafeCoding)

/**
 *  Método que guarda un archivo de forma segura en los NSUserDefaults. Este método archiva los métodos convirtiéndolos en NSData y archivandolos posteriormente, por lo que, 
 *  es necesario que el objeto a archivar responda al protocolo <NSCoding>, además de que la clave y el objeto no sean nil, de otra manera, este método no hará nada.
 *
 *  @param objectToEncode Objeto a archivar en los defaults que debe responder al protocolo <NSCoding>
 *  @param key            Clave para recuperar posteriormente el objeto
 *
 *  @return YES si el archivo ha sido guardado satisfactoriamente, NO de lo contrario
 */
-(BOOL)mcp_safeArchiveObject:(__nonnull id)objectToEncode forKey:( NSString* _Nonnull )key;

/**
 *  Método que obtiene un objeto de los defaults de forma segura, decodificando el NSData si el objeto es de dicho tipo.
 *
 *  @param key Clave para recuperar el objeto.
 *
 *  @return El objeto obtenido de los defaults o nil si no se ha podido recuperar este por algún motivo.
 */
-(__nullable id)mcp_safeRetrieveObjectForKey:( NSString* _Nonnull )key;

#pragma mark - Check methods

/**
 *  Método que nos dice si un objeto es seguro para ser archivado o no. Este método comprueba si el objeto es un array o un diccionario para comprobar los objetos contenidos por estos
 *  dado el caso.
 *
 *  @param objectToEncode Objeto a comprobar
 *
 *  @return YES si el objeto esta preparado para ser archivado, NO de lo contrario
 */
-(BOOL)mcp_checkIfObjectIsSafeForArchiving:(__nonnull id)objectToEncode;

/**
 *  Método que nos dice si los objetos en un array son seguros para ser archivados o no.
 *
 *  @param arrayToArchive Array cuyos objetos se deben comprobar.
 *
 *  @return YES si el array y sus objetos estan preparados para ser archivados, NO de lo contrario.
 */
-(BOOL)mcp_checkIfArrayIsSafeForArchiving:(NSArray* _Nonnull)arrayToArchive;

/**
 *  Método que nos dice si los objetos y claves contenidas en un diccionario son seguras para ser archivadas o no.
 *
 *  @param dictToArchive Diccionario cuyos objetos y claves se deben comprobar.
 *
 *  @return YES si el diccionario y sus claves y objetos están preparados para ser archivados, NO de lo contrario.
 */
-(BOOL)mcp_checkIfDictionaryIsSafeForArchiving:(NSDictionary* _Nonnull)dictToArchive;

@end
