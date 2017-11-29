//
//  ViewController.m
//  8-数组使用
//
//  Created by 刘渊 on 2017/11/22.
//  Copyright © 2017年 LiuYuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //创建方式
    NSArray *array = [NSArray arrayWithObjects:@"wendy",@"andy",@"tom",@"jonery",@"stany", nil];
    NSLog(@"%@",array);
    
    
    NSArray *array1 = [NSArray arrayWithObjects:@"wendy",@"yuan",nil];
    //1.
    NSLog(@"%ld",[array count]);
    //2.
    NSString *str1 = [array objectAtIndex:0];
    //3.追加
    [array1 arrayByAddingObject:@"123"];
    
    NSLog(@"%@",array1);
    
    //4.数组生成字符串 分割
    [array componentsJoinedByString:@","];
    NSLog(@"%@",array);
    
    
   //5.检测数据中是否包含指定的对象元素
    BOOL isArr = [array containsObject:@"yuan"];
    
    //6.重写description
    
    
    //7.根据设置的locale 进行连接数组 - (NSString *)descriptionWithLocale:(id)locale;  - (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level;
    
    //8.两个数组的第一个元素是否相同，如果相同，则返回 数组中，第一个元素的字符串，反之，返回null 对象
    id isSame = [array firstObjectCommonWithArray:array1];
    NSLog(@"%@",isSame);
    
    //9.返回相同值得最低索引  数组中必须先包含
    NSUInteger i = [array indexOfObjectIdenticalTo:@"tom"];
    NSLog(@"%lu",(unsigned long)i);
    NSUInteger II = [array indexOfObject:@"tom"];
    
    
    //10.判断指定的对象是否存在于数组中,如果存在返回对象所在的下标
    NSUInteger index = [array indexOfObject:@"andy"];
    if (index == NSNotFound) {
        NSLog(@"对象不在数组中对象不在数组中");
    }
    
    //11.判断指定的对象是否存在于数组中,数组查询的位置，是从range.location 的位置开始，到range.length 的长度结束。
    NSUInteger index1 = [array indexOfObject:@"jonery" inRange:NSMakeRange(1, 3)];
    if (index1 == NSNotFound) {
        NSLog(@"对象不再数组中");
    }
    
    //12.判断两个数组是否相同
    BOOL isEqual = [array isEqualToArray:array1];
    
    //13.返回最后一个元素
    id lastObj = array.lastObject;
    
    //14.使用数组返回一个 NSEnumerator 对象，这个对象类似与一个指针，可以用来遍历 整个数组 指针从前向后遍历
    NSEnumerator *enu = [array objectEnumerator];
    id obj;
    while (obj = enu.nextObject) {
        NSLog(@"obj === %@ === ",obj);
    }
    
    //15.返回一个NSEnumerator 对象，这个对象类似一个指针，可以用来遍历真个数据，所不同的是，这个指针，是从后向前遍历。
    NSEnumerator *enu1 = [array reverseObjectEnumerator];
    id obj1;
    while (obj1 = enu1.nextObject) {
        NSLog(@"obj1 === %@ === ",obj1);
    }
    
    //16.进行数组的排序
    //    NSArray *arr3 = [array sortedArrayUsingFunction: context:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
