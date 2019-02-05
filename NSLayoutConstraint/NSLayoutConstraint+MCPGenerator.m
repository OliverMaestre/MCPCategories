//
//  NSLayoutConstraint+Generator.m
//
//
//  Created by Mario Chinchilla on 7/10/15.
//  Copyright © 2015 planetmedia. All rights reserved.
//

#import "NSLayoutConstraint+MCPGenerator.h"

@implementation NSLayoutConstraint (Generator)

+(NSArray*)mcp_arrayOfConstraintsToEqualFrameOfView:(UIView*)view toView:(UIView*)viewToBeEqual{
    
    NSLayoutConstraint *constraintCenterX = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:viewToBeEqual attribute:NSLayoutAttributeCenterY multiplier:1.f constant:.0f];
    NSLayoutConstraint *constraintCenterY = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:viewToBeEqual attribute:NSLayoutAttributeCenterX multiplier:1.f constant:.0f];
    NSLayoutConstraint *constraintWidth = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:viewToBeEqual attribute:NSLayoutAttributeWidth multiplier:1.f constant:.0f];
    NSLayoutConstraint *constraintHeight = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:viewToBeEqual attribute:NSLayoutAttributeHeight multiplier:1.f constant:.0f];
    
    return @[constraintCenterX, constraintCenterY, constraintWidth, constraintHeight];
}

@end
