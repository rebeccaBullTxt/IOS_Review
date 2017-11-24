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
    
    //10.获取正序排列集合,通过nextObject函数删除0下标元素
    NSEnumerator *enumerator = [array objectEnumerator];
    NSArray *allKeys = enumerator.allObjects;
    NSLog(@"%@",allKeys);
    
    id obj;
    while (obj == [enumerator nextObject]) {
        //遍历完后，数组已经清空
        NSLog(@"%@",obj);
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
