//
//  ViewController.m
//  PFAvatar
//
//  Created by Cee on 07/08/2015.
//  Copyright (c) 2015 Cee. All rights reserved.
//

#import "ViewController.h"
#import "UIView+PFAvatar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (int i = 0; i < 19; i++) {
        UIView *view = [UIView avatarWithSize:80 color:i text:@"菊"];
        CGRect frame = view.frame;
        frame.origin.x = 90 * (i % 3) + 60;
        frame.origin.y = 90 * (i / 3) + 34;
        view.frame = frame;
        [self.view addSubview:view];
    }
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
