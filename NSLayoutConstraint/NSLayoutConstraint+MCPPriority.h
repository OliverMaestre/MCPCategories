//
//  NSLayoutConstraint+MCPPriority.h
//  Pods
//
//  Created by Mario Chinchilla on 12/11/15.
//
//

#import <UIKit/UIKit.h>

/*! Este nivel de prioridad es como el requerido, salvo que este puede ser modificado en caso de ser necesario (Dado que el nivel 1000 es inmutable) */
static const UILayoutPriority MCPLayoutPriorityMutableRequired NS_AVAILABLE_IOS(6_0) = 999; // This is the priority level with which a button resists compressing its content.

@interface NSLayoutConstraint (MCPPriority)
@end
