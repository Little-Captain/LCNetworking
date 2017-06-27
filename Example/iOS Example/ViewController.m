//
//  ViewController.m
//  iOS Example
//
//  Created by Liu-Mac on 5/5/17.
//  Copyright © 2017 Little-Captain. All rights reserved.
//

#import "ViewController.h"

#import <LCNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UIImage *image = [UIImage imageNamed:@"James Blunt1.jpg"];
    
    [[LCHTTPSessionManager sharedInstance] upload:@"http://172.31.101.178:8080/discuzApp/updateHead.do" parameters:@{@"userId": @"16"} name:@"upload" fileName:@"123.png" data:UIImagePNGRepresentation(image) progress:^(float progress) {
        NSLog(@"%.2f", progress);
    } completion:^(id  _Nonnull result, BOOL isSuccess) {
        if (isSuccess) {
            NSLog(@"成功");
        } else {
            NSLog(@"失败");
        }
    }];
}


@end
