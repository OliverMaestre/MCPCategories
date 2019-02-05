//
//  UITextView+MCPFit.m
//
//  Created by Mario on 25/9/15.
//  Copyright (c) 2015 Mario. All rights reserved.
//

#import "UITextView+MCPFit.h"

@implementation UITextView (MCPFit)

-(void)mcp_calculateHeightWithContainedTextWithoutRebasing:(BOOL)withoutRebasing{
    
    CGSize constrainedSize = CGSizeMake(self.frame.size.width, INT_MAX);
    NSDictionary *attributesDictionary = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName, nil];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:self.text attributes:attributesDictionary];
    CGRect requiredHeight = [attrString boundingRectWithSize:constrainedSize options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    
    if(requiredHeight.size.width > self.frame.size.width)
        requiredHeight = CGRectMake(.0f, .0f, self.frame.size.width, requiredHeight.size.height);
    
    BOOL mustChangeFrame = NO;
    CGFloat paddingOffset = 16.f; // Por defecto y en <=iOS 6, tomaremos 16 pixeles de margen (Default padding)
    if([self respondsToSelector:@selector(textContainerInset)]) // Si el sistema lo permite, tomaremos los bounds que tenga el texto para sumarselos al frameen caso de que sea necesario
        paddingOffset = self.textContainerInset.bottom+self.textContainerInset.top;
        
    
    // Si no se debe rebasar el máximo establecido en el label y el tamaño es menor al actual en el textView
    if(withoutRebasing && (requiredHeight.size.height + paddingOffset) < self.frame.size.height)
        mustChangeFrame = YES; // Se debe cambiar el frame
    else if(!withoutRebasing) // Si no importa que el tamaño rebase el máximo del textView
        mustChangeFrame = YES; // Se debe cambiar el frame sin tener en cuenta nada mas
    
    // Si se debe cambiar el frame se actualiza con la altura obtenida
    if(mustChangeFrame){
        CGRect newFrame = self.frame;
        newFrame.size.height = requiredHeight.size.height+paddingOffset;
        self.frame = newFrame;
    }
}

@end
