//
//  ViewController.m
//  6-动画的使用
//
//  Created by 刘渊 on 2017/11/15.
//  Copyright © 2017年 LiuYuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *pinkView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //收尾式动画
    [self animate];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGRect frame = self.pinkView.frame;


    if (frame.origin.x == 0) {
        frame.origin = CGPointMake(263, 577);
    }else{
        frame.origin = CGPointZero;
    }

    [UIView animateWithDuration:2  //动画的时长
                    delay:1  //延迟
                    usingSpringWithDamping:0.8
                    initialSpringVelocity:0.8
                    options:0
                    animations:^{
                    //写需要动画的代码
                        self.pinkView.frame = frame;
    } completion:^(BOOL finished) {
       //动画完成以后需要执行的代码
        NSLog(@"dddd");
    }];


}

//首尾式动画
- (void)animate{
    
    CGRect frame = self.pinkView.frame;
    
    if (frame.origin.x == 0) {
        frame.origin = CGPointMake(263, 577);
    }else{
        frame.origin = CGPointZero;
    }
    
    //开始一段动画
    [UIView beginAnimations:nil context:nil];
    //设置动画的时长
    [UIView setAnimationDuration:2];
    
    [UIView setAnimationDelay:2];
    
    [UIView setAnimationRepeatCount:3];
    
    //中间写需要动画的代码
    self.pinkView.frame = frame;
    
    //提交动画
    [UIView commitAnimations];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
