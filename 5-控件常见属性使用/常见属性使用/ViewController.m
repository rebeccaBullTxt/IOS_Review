//
//  ViewController.m
//  常见属性使用
//
//  Created by 刘渊 on 2017/11/12.
//  Copyright © 2017年 LiuYuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *yellowV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",NSStringFromCGPoint(self.yellowV.center));
    NSLog(@"%@",NSStringFromCGRect(self.yellowV.bounds));
    
    //拿到父视图
    UIView *superV = self.yellowV.superview;
    NSLog(@"superV = %@",superV);
    
    //拿到视图中的所有的子视图
    NSArray *subVs = self.yellowV.subviews;
    for (UIView *subV in subVs) {
        NSLog(@"%@",subV);
    }
    
    UIView *redV = [[UIView alloc]init];
    redV.frame = CGRectMake(70, 150, 110, 110);
    redV.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:redV];
    //index为0表示在最底层
//    [self.view insertSubview:redV atIndex:0];
//    [self.view insertSubview:redV belowSubview:_yellowV];

//    [self.view insertSubview:redV aboveSubview:_yellowV];
//    [redV bringSubviewToFront:_yellowV];

    // 类似于[self.view insertSubview:self.blueView atIndex:0];方法
    [self.view sendSubviewToBack:self.yellowV];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
