//
//  ViewController.m
//  UIApplication使用
//
//  Created by 刘渊 on 2017/10/22.
//  Copyright © 2017年 LiuYuan. All rights reserved.
/*
 右上角 badge
 
 设置联网指示器
 
 http://www.jianshu.com/p/567abab2098f
 
 */

#import "ViewController.h"
#import <UserNotifications/UserNotifications.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //系统在8.0以上要显示badge 需要注册 只能有一个UIApplication对象
    UIApplication *application = [UIApplication sharedApplication];
    
    CGFloat version = [[UIDevice currentDevice].systemVersion floatValue];
    
    if (10.0 > version > 8.0) {
        
        UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes: UIUserNotificationTypeBadge categories:nil];
        [application registerUserNotificationSettings:settings];
    }else if(version > 10.0){

        UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
        UNAuthorizationOptions options = UNAuthorizationOptionBadge;
        [center requestAuthorizationWithOptions:options completionHandler:^(BOOL granted, NSError * _Nullable error) {

        }];
    }else{
        [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge];
    }
    
    application.applicationIconBadgeNumber = 100;
    
    //联网指示器
    [application setNetworkActivityIndicatorVisible:YES];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    [application openURL:url options:nil completionHandler:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
