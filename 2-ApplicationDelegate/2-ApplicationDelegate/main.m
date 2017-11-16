//
//  main.m
//  2-ApplicationDelegate
//
//  Created by 刘渊 on 2017/10/22.
//  Copyright © 2017年 LiuYuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "LYApplication.h"


/**
 UIApplicationMain函数是一个死循环

 @param argc 代表argv[]数组参数的个数
 @param argv 数组里只有一个元素,加载的是编译后的代码
 @param principalClassName  指定的是UIApplication或者它的子类的类名  nil代表的是使用UIApplication
 @param delegateClassName 代理的类名
 @return
 */
int main(int argc, char * argv[]) {
    @autoreleasepool {
        
//        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
        NSLog(@"argc = %d",argc);
        
        NSLog(@"agrv = %s",argv[0]);
        
        return UIApplicationMain(argc, argv, @"LYApplication", @"AppDelegate");
    }
}
