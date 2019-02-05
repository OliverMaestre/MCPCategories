//
//  NSLayoutConstraint+MCPLayoutUtils.m
//
//  Created by Mario on 18/9/15.
//  Copyright (c) 2015 Mario. All rights reserved.
//

#import "NSLayoutConstraint+MCPLayoutUtils.h"

@implementation NSLayoutConstraint (MCPLayoutUtils)

-(NSLayoutConstraint*)mcp_makeConstraintCopyWithMultiplier:(CGFloat)multiplier{

    return [NSLayoutConstraint constraintWithItem:self.firstItem attribute:self.firstAttribute relatedBy:self.relation toItem:self.secondItem attribute:self.secondAttribute multiplier:multiplier constant:self.constant];
}

-(NSLayoutConstraint*)mcp_makeNewConstraintObject{
    return [NSLayoutConstraint constraintWithItem:self.firstItem attribute:self.firstAttribute relatedBy:self.relation toItem:self.secondItem attribute:self.secondAttribute multiplier:self.multiplier constant:self.constant];
}

@end
