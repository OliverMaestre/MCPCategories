//
//  NSDictionary+MCPSafeAccess.h
//
//  Created by Mario Chinchilla Plaza on 28/8/15.
//  Copyright (c) 2015 Mario Chinchilla Plaza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (MCPSafeAccess)

-(NSString*)mcp_stringForKey:(id)key;
-(NSArray*)mcp_arrayForKey:(id)key;
-(NSDictionary*)mcp_dictionaryForKey:(id)key;
-(NSInteger)mcp_integerForKey:(id)key;
-(CGFloat)mcp_floatForKey:(id)key;
-(double)mcp_doubleForKey:(id)key;

@end
