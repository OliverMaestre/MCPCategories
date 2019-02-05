//
//  NSMutableDictionary+MCPSafeAccess.m
//  Pods
//
//  Created by Mario on 23/9/15.
//
//

#import "NSMutableDictionary+MCPSafeAccess.h"

@implementation NSMutableDictionary (MCPSafeAccess)

-(BOOL)mcp_safeSetObject:(id)value forKey:(id)key{
    
    if(key && value){
       [self setObject:value forKey:key];
        return YES;
    }
    
    return NO;
    
}

@end
