//
//  UITextView+MCPFit.h
//
//  Created by Mario on 25/9/15.
//  Copyright (c) 2015 Mario. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (MCPFit)

/**
 *  Calcula la altura del textView para que quepa el texto en él. El textView incrementará su tamaño tanto como sea necesario para que el texto quepa.
 *
 *  @discussion Este método puede ser útil en labels si tenemos un label multilinea y queremos que cuando tenga una línea esta se alinee arriba.
 *
 *  @param withoutRebasing YES si para aumentar el tamaño del textView sin rebasar su altura actual, NO para aumentar tanto como sea necesario hasta mostrar todo el texto que contiene
 */
-(void)mcp_calculateHeightWithContainedTextWithoutRebasing:(BOOL)withoutRebasing;

@end
