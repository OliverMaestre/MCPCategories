//
//  UIImage+MCPCrop.m
//
//
//  Created by Mario Chinchilla on 13/10/15.
//  Copyright © 2015 planetmedia. All rights reserved.
//

#import "UIImage+MCPCrop.h"

@implementation UIImage (MCPCrop)

- (UIImage *)cropImageFromCenterToSize:(CGSize)bounds
{
    //1 - Obtenemos el nuevo tamaño de la imagen manteniendo el ratio vertical
    CGFloat verticalRatio = bounds.height / self.size.height;
    CGSize newSize = CGSizeMake(self.size.width * verticalRatio, self.size.height * verticalRatio);
    
    //2 - Comenzamos un dibujo del tamaño de los limites pasados por parámetro, desde el centro (De ahí el valor negativo de la variable entera)
    UIGraphicsBeginImageContextWithOptions(bounds, YES, 0);
    NSInteger startingCropXCoordinate = -((newSize.width/2)-(bounds.width/2));
    [self drawInRect:CGRectMake(startingCropXCoordinate, 0, newSize.width, newSize.height)];
    
    //3 - Obtenemos la imagene dibujada, liberamos recursos y devolvemos la imagen
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end
