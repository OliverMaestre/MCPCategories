//
//  NSDictionary+MCPSafeAccess.m
//
//  Created by Mario Chinchilla Plaza on 28/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import "NSDictionary+MCPSafeAccess.h"

@implementation NSDictionary (MCPSafeAccess)

-(NSString*)mcp_stringForKey:(id)key{
    
    id returnedValue = [self objectForKey:key];
    if(returnedValue && [returnedValue isKindOfClass:[NSString class]])
        return returnedValue;
    else if(returnedValue && [returnedValue isKindOfClass:[NSNumber class]])
        return [NSString stringWithFormat:@"%ld",(long)[self mcp_integerForKey:key]];
    
    return nil;
}

-(NSArray*)mcp_arrayForKey:(id)key{
    
    id returnedValue = [self objectForKey:key];
    if(returnedValue && [returnedValue isKindOfClass:[NSArray class]])
        return returnedValue;
    
    return nil;
}

-(NSDictionary*)mcp_dictionaryForKey:(id)key{
    
    id returnedValue = [self objectForKey:key];
    if(returnedValue && ([returnedValue isKindOfClass:[NSDictionary class]] || [returnedValue isKindOfClass:[NSMutableDictionary class]]))
        return returnedValue;
    return nil;
}

-(NSInteger)mcp_integerForKey:(id)key{
    
    id returnedValue = [self objectForKey:key];
    if(returnedValue && [returnedValue respondsToSelector:@selector(integerValue)])
        return [returnedValue integerValue];
    
    return 0;
}

-(CGFloat)mcp_floatForKey:(id)key{
    
    id returnedValue = [self objectForKey:key];
    if(returnedValue && [returnedValue respondsToSelector:@selector(floatValue)])
        return [returnedValue floatValue];
    
    return .0f;
}

-(double)mcp_doubleForKey:(id)key{
    
    id returnedValue = [self objectForKey:key];
    if(returnedValue && [returnedValue respondsToSelector:@selector(doubleValue)])
        return [returnedValue doubleValue];
    
    return .0f;
}


@end
