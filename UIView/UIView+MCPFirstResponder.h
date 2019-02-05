//
//  UIView+MCPFirstResponder.h
//  Pods
//
//  Created by Mario Chinchilla on 11/11/15.
//
//

#import <UIKit/UIKit.h>

@interface UIView (MCPFirstResponder)

/**
 *  Método que itera sobre las subvistas de esta vista hasta encontrar el firstResponder.
 *
 *  @return La vista que es el firstResponder o nil si no se ha encontrado ninguna
 */
-(UIView*)mcp_obtainFirstResponder;

@end
