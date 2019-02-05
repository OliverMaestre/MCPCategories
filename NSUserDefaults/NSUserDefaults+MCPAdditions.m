//
//  NSUserDefaults+MCPAdditions.m
//  Pods
//
//  Created by Mario Chinchilla on 2/12/15.
//
//

#import "NSUserDefaults+MCPAdditions.h"
#import "NSString+MCPValidations.h"

@implementation NSUserDefaults (MCPAdditions)

-(BOOL)mcp_cleanObjectForKey:(NSString*)key{
    if([NSString mcp_isEmptyOrNilString:key]) return NO;
    
    [[NSUserDefaults standardUserDefaults] setObject:nil forKey:key];
    BOOL cleanWasSuccesful = [[NSUserDefaults standardUserDefaults] synchronize];
    
    return cleanWasSuccesful;
}

@end
