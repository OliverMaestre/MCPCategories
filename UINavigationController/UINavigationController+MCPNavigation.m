//
//  UINavigationController+MCPNavigation.m
//  Pods
//
//  Created by Mario Chinchilla on 27/11/15.
//
//

#import <objc/runtime.h>

#import "UINavigationController+MCPNavigation.h"
#import "NSMutableArray+MCPSafeAccess.h"

static char const * const kTransactionOnCourseValueId = "kTransactionOnCourseValueId";

@implementation UINavigationController (MCPNavigation)

-(void)mcp_safePushViewController:(UIViewController*)controller animated:(BOOL)animated{
    [self mcp_safePushViewController:controller animated:animated withCompletionBlock:nil];
}

-(void)mcp_safePushViewController:(UIViewController*)controller animated:(BOOL)animated withCompletionBlock:(void(^)())completion{
    if(self.controllerTransactionOnCurse) return;
    
    self.controllerTransactionOnCurse = YES;
    
    [CATransaction begin];
    [self pushViewController:controller animated:animated];
    [CATransaction setCompletionBlock:^{
        self.controllerTransactionOnCurse = NO;
        
        if(completion)
            completion();
    }];
    [CATransaction commit];
}

-(void)mcp_clearNavigationControllerStack{
    NSMutableArray *arrayViewControllers = [NSMutableArray arrayWithArray:self.viewControllers];
    
    for(UIViewController *stackedViewController in self.viewControllers){
        BOOL isRootController = stackedViewController == [self.viewControllers firstObject];
        BOOL isTopController = stackedViewController == [self.viewControllers lastObject];
        if(isRootController || isTopController)
            continue;
        
        [arrayViewControllers mcp_safeRemoveObject:stackedViewController];
    }
    
    [self setViewControllers:arrayViewControllers];
}

#pragma mark - Associated values

-(void)setControllerTransactionOnCurse:(BOOL)controllerTransactionOnCurse{
    NSNumber *numberValue = [NSNumber numberWithBool:controllerTransactionOnCurse];
    objc_setAssociatedObject(self, kTransactionOnCourseValueId, numberValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(BOOL)controllerTransactionOnCurse{
    NSNumber *numberValue = objc_getAssociatedObject(self, kTransactionOnCourseValueId);
    return [numberValue boolValue];
}

@end
