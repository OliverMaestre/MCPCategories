//
//  UIView+MCPConstraints.m
//
//  Created by Mario on 21/9/15.
//  Copyright (c) 2015 Mario. All rights reserved.
//

#import "UIView+MCPConstraints.h"

@implementation UIView (MCPConstraints)

-(void)mcp_modifyConstraint:(NSLayoutConstraint*)constraint toConstraint:(NSLayoutConstraint*)newConstraint makingLayoutChanges:(BOOL)makingChanges{

    if(!newConstraint || !constraint) return;
    
    [self removeConstraint:constraint];
    [self addConstraint:newConstraint];
    
    if (makingChanges)
        [self layoutIfNeeded];
}

-(void)mcp_modifyConstraint:(NSLayoutConstraint*)constraint withConstantValue:(CGFloat)constant makingLayoutChanges:(BOOL)makingChanges{
    
    if(!constraint) return;
    
    constraint.constant = constant;
    
    if(makingChanges)
        [self layoutIfNeeded];
}

-(void)mcp_modifyConstraintWithAttribute:(NSLayoutAttribute)attribute withConstantValue:(CGFloat)constant makingLayoutChanges:(BOOL)makingChanges{
    
    NSLayoutConstraint *correspondantConstraint = nil;
    for(NSLayoutConstraint *singleConstraint in self.constraints){
        if(singleConstraint.firstAttribute == attribute || singleConstraint.secondAttribute == attribute){
            correspondantConstraint = singleConstraint;
            break;
        }
    }
    
    
    [self mcp_modifyConstraint:correspondantConstraint withConstantValue:constant makingLayoutChanges:makingChanges];
}

@end
