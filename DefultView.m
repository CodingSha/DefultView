//
//  DefultView.m
//  SKZQ
//
//  Created by 时刻足球 on 16/6/1.
//  Copyright © 2016年 时刻足球. All rights reserved.
//

#import "DefultView.h"

@implementation DefultView
- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image text:(NSString *)text
{
    self = [super initWithFrame:frame];
    if (self) {
        [self creatUIWithImage:image text:text];
        self.backgroundColor = RGBA(239, 239, 244, 1);
    }
    return self;
}
-(void)creatUIWithImage:(UIImage *)image text:(NSString *)text{
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.center = CGPointMake(self.centerX, self.centerY - 70 * SKConstant);
    imageView.bounds = CGRectMake(0, 0, image.size.width, image.size.height);
    imageView.image = image;
    [self addSubview:imageView];
    
    UILabel *title = [[UILabel alloc]init];
    title.center = CGPointMake(self.centerX, self.centerY + 10 * SKConstant);
    title.bounds = CGRectMake(0, 0, self.bounds.size.width, 30);
    title.text = text;
    title.textAlignment = 1;
    title.textColor = [UIColor colorWithRed:165/255.0 green:168/255.0 blue:184/255.0 alpha:1.0];
    title.font = [UIFont systemFontOfSize:13 * SKConstant];
    [self addSubview:title];
    
    _refreshBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    _refreshBtn.center = CGPointMake(self.centerX, self.centerY + 10 * SKConstant + 15 + 25);
    _refreshBtn.bounds = CGRectMake(0, 0, 120, 40);
    [_refreshBtn setImage:[[UIImage imageNamed:@"点击刷新btn.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    [_refreshBtn setImage:[[UIImage imageNamed:@"点击刷新btn_sel.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateHighlighted];
    [_refreshBtn addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_refreshBtn];
}
-(void)refreshData:(UIButton *)sender{
    _refreshData();
}
@end
