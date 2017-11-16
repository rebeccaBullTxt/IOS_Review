//
//  TestCell.m
//  UITableView
//
//  Created by 刘渊 on 2017/11/16.
//  Copyright © 2017年 LiuYuan. All rights reserved.
/*
 UITableViewCellStyleDefault,    //显示一个label和一个可选的图片
 UITableViewCellStyleValue1,        // 左边有一个左对齐的label,右边一个右对齐的蓝色文字的label
 UITableViewCellStyleValue2,        // 左边有一个右对齐的蓝色的label,右边有一个左对齐的label
 UITableViewCellStyleSubtitle    //上面有一个左对齐的labl,下面也有一个左对齐的灰色文字的label
 */

#import "TestCell.h"

@implementation TestCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

//写法一:
//- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
//
//    return [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
//}

//写法二:
//在使用自定制cell的时候，如果不使用xib，那么要调一下方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
       
        /*
        //在这里创建你自己的子控件
        self.iconView = [[UIImageView alloc] init];
        self.titleLabel = [[UILabel alloc] init];
        self.detailLabel = [[UILabel alloc] init];
        self.priceLabel = [[UILabel alloc] init];
        self.titleLabel.backgroundColor = [UIColor redColor];
        self.detailLabel.backgroundColor = [UIColor greenColor];
        self.priceLabel.backgroundColor = [UIColor cyanColor];
        
        //添加子控件
        [self.contentView addSubview:self.iconView];
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.detailLabel];
        [self.contentView addSubview:self.priceLabel];
         
         */
        
    }
    return self;
}


//即将布局子控件就会调用这个方法，我们在这里完成cell里面子控件的相对布局
- (void)layoutSubviews
{
    //重写这个方法，一定要记得手动调用父类方法。
    [super layoutSubviews];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
