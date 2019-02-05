//
//  UIAlertView+MCPShow.m
//  PlanetMediaTest
//
//  Created by Mario Chinchilla Plaza on 29/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import "UIAlertView+MCPShow.h"

@implementation UIAlertView (MCPShow)

+(void)mcp_showWithTitle:(NSString*)title andMessage:(NSString*)message andAcceptButton:(NSString*)acceptButton{
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:nil otherButtonTitles:acceptButton, nil];
    [alertView show];
}

@end
