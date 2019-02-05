//
//  NSString+MCPFormat.m
//  Pods
//
//  Created by Mario Chinchilla on 13/11/15.
//
//

#import "NSString+MCPFormat.h"

@implementation NSString (MCPFormat)

-(NSString*)mcp_formattedString{
    NSNumberFormatter *numberFormatter = [NSNumberFormatter new];
    numberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
    return [numberFormatter stringFromNumber:[numberFormatter numberFromString:self]];
}

+(NSString*)mcp_getTimeFormattedStringWithSeconds:(NSInteger)totalSeconds{
    NSInteger seconds = totalSeconds % 60;
    NSInteger minutes = (totalSeconds / 60) % 60;
    NSInteger hours = totalSeconds / 3600;
    
    return [NSString stringWithFormat:@"%02ld:%02ld:%02ld",(long)hours, (long)minutes, (long)seconds];
}

@end
