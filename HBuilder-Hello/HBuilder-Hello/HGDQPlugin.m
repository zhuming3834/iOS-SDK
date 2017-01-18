//
//  HGDQPlugin.m
//  HBuilder-Hello
//
//  Created by hgdq on 2017/1/17.
//  Copyright © 2017年 DCloud. All rights reserved.
//

#import "HGDQPlugin.h"
#import "HGDQViewController.h"

@implementation HGDQPlugin

    
- (void)hgdqGotoNative:(PGMethod *)commands{
    if (commands) {
        NSString *cbid  = [commands.arguments objectAtIndex:0];
        NSString *revInfo = [commands.arguments objectAtIndex:1];
        NSLog(@"userInfo = %@",revInfo);
        NSLog(@"cbid = %@",cbid);
        // 跳转到原生界面
        HGDQViewController *hgdqVC = [[HGDQViewController alloc] init];
        hgdqVC.dic = (NSDictionary *)revInfo;
        UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
        [rootVC presentViewController:hgdqVC animated:YES completion:nil];
        // 原生界面向H5界面传值
        NSDictionary *cDice = @{@"name":@"http://hgdqstudio.online"};
        PDRPluginResult *result = [PDRPluginResult resultWithStatus:PDRCommandStatusOK messageAsDictionary:cDice];
        [self toCallback:cbid withReslut:[result toJSONString]];
    }
}
    
@end
