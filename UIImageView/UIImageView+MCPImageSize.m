//
//  UIImageView+MCPImageSize.m
//
//
//  Created by Mario Chinchilla on 15/10/15.
//  Copyright © 2015 planetmedia. All rights reserved.
//

#import "UIImageView+MCPImageSize.h"

@implementation UIImageView (MCPImageSize)

- (CGSize)mcp_imageCurrentScale {
    CGFloat sx = self.frame.size.width / self.image.size.width;
    CGFloat sy = self.frame.size.height / self.image.size.height;
    CGFloat s = 1.0;
    switch (self.contentMode) {
        case UIViewContentModeScaleAspectFit:
            s = fminf(sx, sy);
            return CGSizeMake(s, s);
            break;
            
        case UIViewContentModeScaleAspectFill:
            s = fmaxf(sx, sy);
            return CGSizeMake(s, s);
            break;
            
        case UIViewContentModeScaleToFill:
            return CGSizeMake(sx, sy);
            
        default:
            return CGSizeMake(s, s);
    }
}

-(CGSize)mcp_imageSize{
    CGSize scaleSize = [self mcp_imageCurrentScale];
    
    CGFloat scaledWidth = scaleSize.width * self.image.size.width;
    CGFloat scaledHeight = scaleSize.height * self.image.size.height;
    return CGSizeMake(scaledWidth, scaledHeight);
}

-(CGRect)mcp_imageFrame{
    CGSize imageSize = [self mcp_imageSize];
    
    switch (self.contentMode){
        case UIViewContentModeCenter:
        case UIViewContentModeScaleAspectFit:
        case UIViewContentModeScaleAspectFill:
            return CGRectMake(self.center.x-(imageSize.width/2), self.center.y-(imageSize.height/2), imageSize.width, imageSize.height);
        case UIViewContentModeTopLeft:
            return CGRectMake(0, 0, imageSize.width, imageSize.height);
        case UIViewContentModeTop:
            return CGRectMake(self.center.x-(imageSize.width/2), 0, imageSize.width, imageSize.height);
        case UIViewContentModeTopRight:
            return CGRectMake(self.frame.size.width-imageSize.width, 0, imageSize.width, imageSize.height);
        case UIViewContentModeLeft:
            return CGRectMake(0, self.center.y-(imageSize.height/2), imageSize.width, imageSize.height);
        case UIViewContentModeRight:
            return CGRectMake(self.frame.size.width-imageSize.width, self.center.y-(imageSize.height/2), imageSize.width, imageSize.height);
        case UIViewContentModeBottomLeft:
            return CGRectMake(0, self.frame.size.height-imageSize.height, imageSize.width, imageSize.height);
        case UIViewContentModeBottom:
            return CGRectMake(self.center.x-(imageSize.width/2), self.frame.size.height-imageSize.height, imageSize.width, imageSize.height);
        case UIViewContentModeBottomRight:
            return CGRectMake(self.frame.size.width-imageSize.width, self.frame.size.height-imageSize.height, imageSize.width, imageSize.height);
        default:
            return self.frame;
    }
}

@end
