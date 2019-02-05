//
//  UINavigationController+MCPStackInfo.m
//  Pods
//
//  Created by Mario Chinchilla on 4/12/15.
//
//

#import "UINavigationController+MCPStackInfo.h"

@implementation UINavigationController (MCPStackInfo)

+(UIViewController*)mcp_obtainTopViewController{
    UINavigationController *rootController = (UINavigationController*)[[[[UIApplication sharedApplication] delegate] window] rootViewController];
    UIViewController *topViewController = nil;
    if(![rootController isKindOfClass:[UINavigationController class]])
        topViewController = rootController.navigationController.topViewController;
    else
        topViewController = rootController.topViewController;
    
    return topViewController;
}

@end
