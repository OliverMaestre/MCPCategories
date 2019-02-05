//
//  NSArray+MCPSafeAccess.m
//
//  Created by Mario Chinchilla Plaza on 28/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import "NSArray+MCPSafeAccess.h"

@implementation NSArray (MCPSafeAccess)

-(id)mcp_safeObjectAtIndex:(NSUInteger)index{
    
    if([self isIndexContainedInRange:index])
        return [self objectAtIndex:index];
    return nil;
}
  
-(NSArray*)mcp_safeSubarrayWithRange:(NSRange)range{
    
    // Si la posición del rango no se encuentra en los índices del array, devolvemos nil
    if(![self isIndexContainedInRange:range.location]) return nil;
    
    // Comprobamos para cada posición del rango si esta dentro de los índices del array, y si alguna posición no lo esta, cortamos ahí y modificamos el rango para
    // que al devolver el array no se salga del índice
    for(NSUInteger i= range.location; i<=range.location+range.length ;i++){
        if(![self isIndexContainedInRange:i]){
            range = NSMakeRange(range.location, i-range.location);
            break;
        }
    }
    
    return [self subarrayWithRange:range];
}

-(BOOL)isIndexContainedInRange:(NSInteger)index{
    
    if(index >= 0 && index < self.count)
        return YES;
    return NO;
}

@end
