//
//  NSDictionary+MCPCheck.m
//  Pods
//
//  Created by Mario on 23/9/15.
//
//

#import "NSDictionary+MCPCheck.h"
#import "NSDictionary+MCPSafeAccess.h"

@implementation NSDictionary (MCPCheck)

-(BOOL)mcp_containsKey:(id)key{
    
    id value = [self objectForKey:key];
    if(value)
        return YES;
    
    return NO;
}

@end
