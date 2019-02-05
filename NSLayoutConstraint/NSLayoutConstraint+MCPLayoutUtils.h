//
//  NSLayoutConstraint+MCPLayoutUtils.h
//
//  Created by Mario on 18/9/15.
//  Copyright (c) 2015 Mario. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (MCPLayoutUtils)

-(NSLayoutConstraint*)mcp_makeConstraintCopyWithMultiplier:(CGFloat)multiplier;
-(NSLayoutConstraint*)mcp_makeNewConstraintObject;

@end
