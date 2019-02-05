//
//  NSMutableDictionary+MCPSafeAccess.h
//  Pods
//
//  Created by Mario on 23/9/15.
//
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (MCPSafeAccess)

-(BOOL)mcp_safeSetObject:(id)value forKey:(id)key;

@end
