//
//  UILabel+MCPFit.m
//  PlanetMediaTest
//
//  Created by Mario Chinchilla Plaza on 29/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import "UILabel+MCPFit.h"

@implementation UILabel (MCPFit)

-(void)mcp_calculateLabelHeightWithContainedTextWithoutRebasing:(BOOL)withoutRebasing{
    
    if(!self.text || [self.text isEqualToString:@""]) return;
    
    CGSize constrainedSize = CGSizeMake(self.frame.size.width, INT_MAX); // Se recoge el tamaño deseado para el label
    NSDictionary *attributesDictionary = [NSDictionary dictionaryWithObjectsAndKeys: self.font, NSFontAttributeName,nil]; // Se crea un string con los atributos especificados (Fuente)
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:self.text attributes:attributesDictionary];
    CGRect requiredHeight = [string boundingRectWithSize:constrainedSize options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    
    if (requiredHeight.size.width > self.frame.size.width) {
        requiredHeight = CGRectMake(0,0, self.frame.size.width, requiredHeight.size.height);
    }
    
    
    BOOL mustChangeFrame = NO;
    // Si no se debe rebasar el máximo establecido en el label y el tamaño es menor al actual del label
    if (withoutRebasing && requiredHeight.size.height < self.frame.size.height)
        mustChangeFrame = YES; // Se debe cambiar el frame
    else if(!withoutRebasing) // Si no importa que el tamaño rebase el máximo del label
        mustChangeFrame = YES; // Se debe cambiar el frame sin tener en cuenta nada mas
    
    // Si se debe cambiar el frame se actualiza con la altura obtenida
    if(mustChangeFrame){
        CGRect newFrame = self.frame;
        newFrame.size.height = requiredHeight.size.height;
        self.frame = newFrame;
    }
    
    [self updateConstraints];
}

@end
