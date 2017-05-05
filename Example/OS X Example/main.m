//
//  main.m
//  OS X Example
//
//  Created by Liu-Mac on 5/5/17.
//  Copyright © 2017 Little-Captain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <LCNetworking/LCNetworking.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableDictionary* dict = [NSMutableDictionary dictionary];
        
        dict[@"UserName"] = @"17384073915";
        dict[@"PassWord"] = @"e10adc3949ba59abbe56e057f20f883e";
        
        [[LCHTTPSessionManager sharedInstance] request:LCHttpMethodPOST urlStr:@"http://183.230.133.205:8062/api/appDriverUser/Driverlogin" parameters:dict completion:^(id result, BOOL isSuccess) {
            if (isSuccess) {
                NSLog(@"请求成功--%@", result);
            } else {
                NSLog(@"请求失败--%@",result);
            }
        }];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
