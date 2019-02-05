//
//  UIViewController+MCPLoad.m
//  Pods
//
//  Created by Mario Chinchilla PlanetMedia on 9/12/15.
//
//

#import "UIViewController+MCPLoad.h"

@implementation UIViewController (MCPLoad)

-(id)mcp_initWithNibOfClassNameOnBundle:(NSBundle *)nibBundleOrNil{
    
    NSString *nibName = NSStringFromClass([self class]);
    return [self initWithNibName:nibName bundle:nibBundleOrNil];
}

@end
