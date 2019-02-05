//
//  UIView+MCPConstraints.h
//
//  Created by Mario on 21/9/15.
//  Copyright (c) 2015 Mario. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MCPConstraints)

/**
 *  Método que sustituye una constraint por otra pasada como parámetro. Quita la primera, y despues añade la segunda. Además actualiza o no la interfaz dependiendo del parámetro restante.
 *
 *  @note Este método no hace nada si no se pasan 2 constraints como parámetros. Este método es útil cuando en lugar de la constante se desea manipular el multiplicador de una constraint 
 *  determinada
 *
 *  @param constraint       Constraint que se desea quitar
 *  @param newConstraint    Nueva constraint que se va a añadir al a vista
 *  @param makingChanges    YES si se desea efectuar los cambios (Llamar a 'layoutIfNeeded'), NO de lo contrario
 */
-(void)mcp_modifyConstraint:(NSLayoutConstraint*)constraint toConstraint:(NSLayoutConstraint*)newConstraint makingLayoutChanges:(BOOL)makingChanges;

/**
 *  Método que modifica una constraint sin sustituirla por ninguna otra
 *
 *  @param constraint    Constraint de la cual se quiere modificar su constante
 *  @param constant      Valor de la constante que se quiere asignar a la constraint
 *  @param makingChanges YES si se desea efectuar los cambios (Llamar a 'layoutIfNeeded'), NO de lo contrario
 */
-(void)mcp_modifyConstraint:(NSLayoutConstraint*)constraint withConstantValue:(CGFloat)constant makingLayoutChanges:(BOOL)makingChanges;

/**
 *  Método que modifica una constraint con un atributo pasado por parámetro, sin sustituirla por ninguna otra
 *
 *  @param attribute     Atributo de la constraint que se desea cambiar
 *  @param constant      Valor de la constante que se quiere asignar a la cosntraint
 *  @param makingChanges YES si se desea efectuar los cambios (Llamar a 'layoutIfNeeded'), NO de lo contrario
 */
-(void)mcp_modifyConstraintWithAttribute:(NSLayoutAttribute)attribute withConstantValue:(CGFloat)constant makingLayoutChanges:(BOOL)makingChanges;

@end
