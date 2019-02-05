//
//  UIView+MCPFirstResponder.m
//  Pods
//
//  Created by Mario Chinchilla on 11/11/15.
//
//

#import "UIView+MCPFirstResponder.h"

@implementation UIView (MCPFirstResponder)

- (UIView *)mcp_obtainFirstResponder
{
    if (self.isFirstResponder)
        return self;
    
    for (UIView *subView in self.subviews) {
        UIView *firstResponder = [subView mcp_obtainFirstResponder];
        if (firstResponder != nil) {
            return firstResponder;
        }
    }
    
    return nil;
}

@end
