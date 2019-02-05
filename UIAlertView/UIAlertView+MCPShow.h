//
//  UIAlertView+MCPShow.h
//  PlanetMediaTest
//
//  Created by Mario Chinchilla Plaza on 29/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (MCPShow)

+(void)mcp_showWithTitle:(NSString*)title andMessage:(NSString*)message andAcceptButton:(NSString*)acceptButton;

@end
