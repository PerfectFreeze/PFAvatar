//
//  UIColor+PFAvatar.m
//  PFAvatar
//
//  Created by Cee on 07/08/2015.
//  Copyright (c) 2015 Cee. All rights reserved.
//

#import "UIColor+PFAvatar.h"

@implementation UIColor (PFAvatar)

+ (UIColor *)colorWithHexString:(NSString *)string alpha:(CGFloat)alpha
{
    NSString *pureHexString = [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([pureHexString length] != 6) {
        return [UIColor whiteColor];
    }
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [pureHexString substringWithRange:range];
    
    range.location += range.length ;
    NSString *gString = [pureHexString substringWithRange:range];
    
    range.location += range.length ;
    NSString *bString = [pureHexString substringWithRange:range];
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alpha];
}

+ (UIColor *)colorWithHexString:(NSString *)string
{
    return [UIColor colorWithHexString:string alpha:1.0];
}

@end
