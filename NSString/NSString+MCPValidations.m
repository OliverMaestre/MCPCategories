//
//  NSString+MCPValidations.m
//  PlanetMediaTest
//
//  Created by Mario Chinchilla Plaza on 30/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import "NSString+MCPValidations.h"

@implementation NSString (MCPValidations)

-(BOOL)mcp_sensitiveContainsString:(NSString*)searchString{
    NSRange range = [self rangeOfString:searchString options:NSLiteralSearch];
    return range.location != NSNotFound;
    
}

-(BOOL)mcp_unsensitiveContainsString:(NSString*)searchString{
    NSRange range = [self rangeOfString:searchString options:NSCaseInsensitiveSearch];
    return range.location != NSNotFound;
}

+(BOOL)mcp_isEmptyOrNilString:(NSString*)string{
    return !string || [string isEqualToString:@""];
}

@end
