//
//  UIView+MCPLoad.m
//  PlanetMediaTest
//
//  Created by Mario Chinchilla Plaza on 28/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import "UIView+MCPLoad.h"

@implementation UIView (MCPLoad)

+(id)mcp_makeViewWithNibName:(NSString*)name{
    
    NSArray *objectsInNib = [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil];
    return [objectsInNib lastObject];
}

+(id)mcp_makeFullScreenViewWithNibName:(NSString*)name{
    
    UIView *obtainedView = [self mcp_makeViewWithNibName:name];
    obtainedView.frame = [[UIScreen mainScreen] bounds];
    
    return obtainedView;
}

@end
