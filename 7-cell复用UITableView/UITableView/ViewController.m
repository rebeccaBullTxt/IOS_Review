//
//  ViewController.m
//  UITableView
//
//  Created by 刘渊 on 2017/11/16.
//  Copyright © 2017年 LiuYuan. All rights reserved.
//

#import "ViewController.h"
#import "TestCell.h"
@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tabV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //可以使用storyboard进行拖线的形式完成数据源的设置
    
    [_tabV registerClass:[TestCell class] forCellReuseIdentifier:@"cellID"];
    
}

#pragma mark - tableView的数据源方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 10;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (!(section % 2)) {   //如果是偶数,就返回3个
        return 3;
    }
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    /*
    (1).系统cell不注册:
     
    //1.根据重用的ID标识符,从tableView的缓存池里获取可以重用的cell.
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"ddddddddd"];
    
    //2.如果没有从缓存池里获取到可以重用的cell
    if (cell == nil) {
        //就手动的创建一个cell,并且指定一个重用ID
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"ddddddddd"];
    }
    
    //    cell.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
    
    cell.textLabel.text = [NSString stringWithFormat:@"第%zd组,第%zd行的cell",indexPath.section,indexPath.row];
    cell.detailTextLabel.text = @"xxxxxx0000000";
    cell.imageView.image = [UIImage imageNamed:@"icon_00"];
    
    
    NSLog(@"第%zd组,第%zd行的cell = %p",indexPath.section,indexPath.row,cell.description);
    
    return cell;
     
     系统cell注册:
     [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
     
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
     
     */

    /*
    (2).自定义cell不注册:
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (!cell) {
        cell = [[TestCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    }
    
    return cell;
    */
    
//    自定义cell:注册:
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"我是第%zd组,%zd行的cell",indexPath.section,indexPath.row];
    cell.detailTextLabel.text = @"sssss";
    
    //    unable to dequeue a cell with identifier ddddddd - must register a nib or a class for the identifier or connect a prototype cell in a storyboard
    //不能够从缓存池里获取一个可重用的cell.必须注册一个cell.
    //注册cell有三种方法:1.使用xib  2.使用代码注册    3.使用storyboard
    
    return cell;
    
    
    /*
     
     (3)自定义cellXib注册
     1.注册
     [tableView registerNib:[UINib nibWithNibName:@"xxxxViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
     xxxxCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
     2.不注册
     xxxxCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
     if (cell == nil) {
     cell=[[[NSBundle mainBundle]loadNibNamed:@“xxxxCell" owner:self options:nil]lastObject];
     }
     */
    
}

@end
