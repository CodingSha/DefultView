//
//  DefultView.h
//  SKZQ
//
//  Created by 时刻足球 on 16/6/1.
//  Copyright © 2016年 时刻足球. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DefultView : UIView
@property (nonatomic,copy)void(^refreshData)();
@property (nonatomic,strong)UIButton *refreshBtn;
/**
 *  缺省页面
 *
 *  @param view 缺省页面的父视图
 *  @param image 缺省图片
 *  @param text  缺省标题
 *
 *  @return instancetype
 */
- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image text:(NSString *)text;
@end
