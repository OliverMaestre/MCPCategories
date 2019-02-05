//
//  UIView+MCPLoad.h
//  PlanetMediaTest
//
//  Created by Mario Chinchilla Plaza on 28/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MCPLoad)

+(id)mcp_makeViewWithNibName:(NSString*)name;
+(id)mcp_makeFullScreenViewWithNibName:(NSString*)name;

@end
