//
//  UIColor+PFAvatar.h
//  PFAvatar
//
//  Created by Cee on 07/08/2015.
//  Copyright (c) 2015 Cee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (PFAvatar)
+ (UIColor *)colorWithHexString:(NSString *)string alpha:(CGFloat)alpha;
+ (UIColor *)colorWithHexString:(NSString *)string;
@end
