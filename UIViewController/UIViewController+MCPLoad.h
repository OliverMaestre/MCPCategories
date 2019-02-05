//
//  UIViewController+MCPLoad.h
//  Pods
//
//  Created by Mario Chinchilla PlanetMedia on 9/12/15.
//
//

#import <UIKit/UIKit.h>

@interface UIViewController (MCPLoad)

/**
 *  Método que inicializa un ViewController con el nib cuyo nombre DEBE ser igual al nombre de la clase de este viewController. i.e si la clase del viewController se llama test1, 
 *  este método cargará el test1.nib para cargar el viewController.
 *
 *  @param nibBundleOrNil Bundle donde se debe encontrar el nib, cuyo nombre es el mismo que el de esta clase.
 *
 *  @return El viewController, inicializado con el nib especificado.
 */
-(id)mcp_initWithNibOfClassNameOnBundle:(NSBundle *)nibBundleOrNil;

@end
