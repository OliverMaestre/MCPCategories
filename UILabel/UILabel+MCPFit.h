//
//  UILabel+MCPFit.h
//  PlanetMediaTest
//
//  Created by Mario Chinchilla Plaza on 29/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (MCPFit)

/**
 *  Calcula la altura del label para que quepa el texto en el. El label incrementará su tamaño
 *  tanto como sea necesario para que el texto quepa. Si el texto es nil, este método no hace nada.
 *
 *  @discussion Este método puede ser útil si tenemos un label multilinea y queremos que cuando tenga una linea esta se alinee verticalmente arriba
 *
 *  @param withoutRebasing Si es YES, el label aumentará su tamaño pero solo hasta la altura actual del label, si es NO,
 *  el label aumentará de tamaño tanto como sea necesario para que se vea todo el texto que contiene.
 */
-(void)mcp_calculateLabelHeightWithContainedTextWithoutRebasing:(BOOL)withoutRebasing;
@end
