//
//  NSMutableDictionary+MCPSafeAccess.m
//  PlanetMediaTest
//
//  Created by Mario Chinchilla Plaza on 28/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import "NSMutableArray+MCP.h"
#import "NSArray+MCPSafeAccess.h"

@implementation NSMutableArray (MCPSafeAccess)

#pragma mark - Add Objects methods

-(BOOL)mcp_safeAddObject:(id)object{
    
    if(object){
        [self addObject:object];
        return YES;
    }
    
    return NO;
}

-(BOOL)mcp_safeAddObjectsFromArray:(NSArray*)array{
    
    if(array && array.count){
        [self addObjectsFromArray:array];
        return YES;
    }
    
    return NO;
}

#pragma mark - Remove Objects methods

-(BOOL)mcp_safeRemoveObject:(id)object{
    
    if(object){
        [self removeObject:object];
        return YES;
    }
    
    return NO;
}

-(BOOL)mcp_safeRemoveObjectAtIndex:(NSInteger)index{
    
    if([self isIndexContainedInRange:index]){
        [self removeObjectAtIndex:index];
        return YES;
    }
    
    return NO;
}

@end