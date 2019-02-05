//
//  NSUserDefaults+MCPAdditions.h
//  Pods
//
//  Created by Mario Chinchilla on 2/12/15.
//
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (MCPAdditions)

/**
 *  Método que elimina un objeto de los defaults para la key pasada.
 *
 *  @param key Key de la cual se quiere borrar el objeto de los defaults.
 *
 *  @return YES si se ha podido eliminar el objeto, NO de lo contrario o si no existía el objeto.
 */
-(BOOL)mcp_cleanObjectForKey:(NSString* _Nonnull)key;

@end
