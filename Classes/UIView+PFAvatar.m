//
//  UIView+PFAvatar.m
//  PFAvatar
//
//  Created by Cee on 07/08/2015.
//  Copyright (c) 2015 Cee. All rights reserved.
//

#import "UIView+PFAvatar.h"

@implementation UIView (PFAvatar)
+ (UIView *)avatarWithSize:(CGFloat)size
                     color:(PFAvatarColor)color
                      text:(NSString *)text

{

    
    UIView *avatarView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, size, size)];
    avatarView.layer.backgroundColor = [UIColor colorWithHexString:self.colorArray[color]].CGColor;
    avatarView.layer.masksToBounds = YES;
    avatarView.layer.cornerRadius = size / 2.f;
    
    text = [text substringToIndex:1];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, size, size)];
    label.text = text;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont fontWithName:@"Arial" size:size / 2.f];
    [avatarView addSubview:label];
    
    return avatarView;
}

+ (NSArray *)colorArray
{
    static NSArray *_colorArray;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _colorArray = @[@"F44336", @"E91E63", @"9C27B0",
                        @"673AB7", @"3F51B5", @"2196F3",
                        @"03A9F4", @"00BCD4", @"009688",
                        @"4CAF50", @"8BC34A", @"CDDC39",
                        @"FFEB3B", @"FFC107", @"FF9800",
                        @"FF5722", @"795548", @"9E9E9E",
                        @"607D8B"];
    });
    return _colorArray;
}
@end
