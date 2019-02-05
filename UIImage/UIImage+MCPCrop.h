//
//  UIImage+MCPCrop.h
//
//
//  Created by Mario Chinchilla on 13/10/15.
//  Copyright © 2015 planetmedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (MCPCrop)

/**
 *  Método que desde el centro, recorta una imagen a un tamaño dado.
 *
 *  @param bounds Tamaño al que se quiere recortar la imagen, teniendo como referencia el centro de esta.
 *
 *  @return La imagen ya recortada
 */
- (UIImage *)cropImageFromCenterToSize:(CGSize)bounds;

@end
