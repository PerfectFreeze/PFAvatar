//
//  UIView+PFAvatar.h
//  PFAvatar
//
//  Created by Cee on 07/08/2015.
//  Copyright (c) 2015 Cee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+PFAvatar.h"

typedef NS_ENUM(NSInteger, PFAvatarColor) {
    PFAvatarColorRed,
    PFAvatarColorPink,
    PFAvatarColorPurple,
    PFAvatarColorDarkPurple,
    PFAvatarColorIndigo,
    PFAvatarColorBlue,
    PFAvatarColorLightBlue,
    PFAvatarColorCyan,
    PFAvatarColorTeal,
    PFAvatarColorGreen,
    PFAvatarColorLightGreen,
    PFAvatarColorLime,
    PFAvatarColorYellow,
    PFAvatarColorAmber,
    PFAvatarColorOrange,
    PFAvatarColorDarkOrange,
    PFAvatarColorBrown,
    PFAvatarColorGrey,
    PFAvatarColorBlueGrey,
};

@interface UIView (PFAvatar)
+ (UIView *)avatarWithSize:(CGFloat)size
                     color:(PFAvatarColor)color
                      text:(NSString *)text;
@end
