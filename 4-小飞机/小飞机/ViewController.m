//
//  ViewController.m
//  小飞机
//
//  Created by 刘渊 on 2017/11/12.
//  Copyright © 2017年 LiuYuan. All rights reserved.
//

#import "ViewController.h"

typedef enum : NSUInteger {
    kButtonTop = 1,
    kButtonLeft = 2,
    kButtonBottom = 3,
    kButtonRight = 4,
} DirectionButtonType;


@interface ViewController ()

@property (nonatomic,weak) UIButton *heroBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createUI];
}

- (void)createUI{
    
    UIImageView *backGroundImage = [[UIImageView alloc]init];
    backGroundImage.image = [UIImage imageNamed:@"background"];
    [self.view addSubview:backGroundImage];
    
    backGroundImage.frame = self.view.frame;
    
    UIButton *heroBtn = [[UIButton alloc]init];
    _heroBtn = heroBtn;
    
    [heroBtn setImage:[UIImage imageNamed:@"hero1"] forState:UIControlStateNormal];
    [heroBtn setImage:[UIImage imageNamed:@"hero2"] forState:UIControlStateHighlighted];
    
    [heroBtn sizeToFit];
    heroBtn.center = self.view.center;
    
    [self.view addSubview:_heroBtn];
    
    [self addButtons:@"top" offset:CGPointMake(0, -40) tag:kButtonTop];
    [self addButtons:@"left" offset:CGPointMake(-40, 0) tag:kButtonLeft];
    [self addButtons:@"bottom" offset:CGPointMake(0, 40) tag:kButtonBottom];
    [self addButtons:@"right" offset:CGPointMake(40, 0) tag:kButtonRight];
    
}

- (void)addButtons:(NSString *)preImageName offset:(CGPoint)offset tag:(DirectionButtonType)tag{
    
    UIButton *btn = [[UIButton alloc]init];
    [btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_normal",preImageName]] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_highlighted",preImageName]] forState:UIControlStateHighlighted];
    
    //找一个按钮的中心点
    CGPoint buttonCenter = CGPointMake(self.view.center.x, self.view.center.y + 200);
    
    CGFloat width = 40;
    CGFloat height = width;
    CGRect buttonRect = CGRectMake(buttonCenter.x - width / 2, buttonCenter.y - height / 2, width, height);
    
    //   CGRectOffset: rect 按照（dx,dy）进行平移,重置rect作为结果返回
    //   CGRectInset:通过 第二个参数 dx和第三个参数 dy 重置第一个参数rect 作为结果返回。重置的方式为，首先将rect 的坐标（origin）按照（dx,dy) 进行平移，然后将rect的大小（size） 宽度缩小2倍的dx，高度缩小2倍的dy；
    btn.frame = CGRectOffset(buttonRect, offset.x, offset.y);
    
    [btn addTarget:self action:@selector(move:) forControlEvents:UIControlEventTouchUpInside];
    
    btn.tag = tag;
    [self.view addSubview:btn];
}

- (void)move:(UIButton *)sender{
    CGRect frame = self.heroBtn.frame;
    switch (sender.tag) {
        case kButtonTop:
            //            NSLog(@"向上");
            frame.origin.y -= 50;
            break;
        case kButtonLeft:
            //            NSLog(@"向左");
            frame.origin.x -= 50;
            break;
        case kButtonBottom:
            //            NSLog(@"向下");
            frame.origin.y += 50;
            break;
        case kButtonRight:
            //            NSLog(@"向右");
            frame.origin.x += 50;
            break;
        default:
            break;
    }
    self.heroBtn.frame = frame;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
