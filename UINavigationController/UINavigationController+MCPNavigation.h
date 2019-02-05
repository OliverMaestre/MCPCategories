//
//  UINavigationController+MCPNavigation.h
//  Pods
//
//  Created by Mario Chinchilla on 27/11/15.
//
//

#import <UIKit/UIKit.h>

@interface UINavigationController (MCPNavigation)

@property (nonatomic, assign) BOOL controllerTransactionOnCurse;

/**
 *  Método que hace push del viewController pasado por parámetro de forma segura, esto es, si hay alguna otra transacción de otro viewController que esta haciendo pop/push, este método no 
 *  hará nada, de otro modo hara el push de forma normal.
 *
 *  @param controller ViewController del cual se quiere hacer push. Tras ello, se limpiará el stack y se dejarán solo el rootController y este controller,
 *  @param animated   YES si queremos animar el push del viewController, NO de lo contrario.
 */
-(void)mcp_safePushViewController:(UIViewController*)controller animated:(BOOL)animated;

/**
 *  Método que hace push del viewController pasado por parámetro de forma segura, esto es, si hay alguna otra transacción de otro viewController que esta haciendo pop/push, este método no
 *  hará nada, de otro modo hara el push de forma normal.
 *
 *  @param controller ViewController del cual se quiere hacer push. Tras ello, se limpiará el stack y se dejarán solo el rootController y este controller,
 *  @param animated   YES si queremos animar el push del viewController, NO de lo contrario.
 *  @param completion Bloque completion que será ejecutado al finalizar la transacción
 */
-(void)mcp_safePushViewController:(UIViewController*)controller animated:(BOOL)animated withCompletionBlock:(void(^)())completion;

/**
 *  Método que limpia el stack de ViewControllers y deja solo el rootViewController y el topViewController del navigation controller en la pila.
 */
-(void)mcp_clearNavigationControllerStack;

@end
