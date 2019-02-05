//
//  NSJSONSerialization+MCPStrip.h
//  Pods
//
//  Created by Mario Chinchilla on 12/11/15.
//
//

#import <Foundation/Foundation.h>

@interface NSJSONSerialization (MCPStrip)

/**
 *  Método que efectúa el cambio para intentar parsear un JSON y convertirlo a NSDictionary o NSArray tal cual lo hace el método nativo. En cambio este método intenta, si no ha podido
 *  parsear los datos, eliminar la posible basura que haya en los datos para devolver un JSON. En caso de que no se haya podido este método devuelve nil.
 *
 *  @param data          Datos a parsear por el JSON
 *  @param opt           Opciones de parseo del JSON
 *  @param error         Punetero al error que pueda suceder parseando el json, si todo salió bien este error sera nil
 *  @param strippingDirt YES si se quiere intentar eliminar la suciedad en caso de que no se haya podido obtener el JSON, NO de lo contrario.
 *
 *  @return Un objeto con la información ya parseada del JSON o nil si ocurrió algún error
 */
+(id)mcp_JSONObjectWithData:(NSData *)data options:(NSJSONReadingOptions)opt error:(NSError **)error tryingToStripDirt:(BOOL)strippingDirt;

@end
