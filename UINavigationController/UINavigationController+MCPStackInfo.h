//
//  UINavigationController+MCPStackInfo.h
//  Pods
//
//  Created by Mario Chinchilla on 4/12/15.
//
//

#import <UIKit/UIKit.h>

@interface UINavigationController (MCPStackInfo)

/**
 *  Método que obtiene el topViewController en el momento de la llamada al método.
 *
 *  @return Devuelve el controller que esta al frente en la aplicación o nil si ha habido un error.
 */
+(UIViewController*)mcp_obtainTopViewController;

@end
