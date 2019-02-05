//
//  NSString+MCPRange.m
//  Pods
//
//  Created by Mario on 23/9/15.
//
//

#import "NSString+MCPRange.h"

@implementation NSString (MCPRange)

-(NSRange)mcp_safeRangeContainedInString:(NSRange)range{
    return NSIntersectionRange(range, [self mcp_fullStringRange]);
}

-(NSRange)mcp_fullStringRange{
    return NSMakeRange(0, [self length]);
}

@end
