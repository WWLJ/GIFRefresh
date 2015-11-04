//
///Users/ishareme/Downloads/GIFRefreshControl-master/CHGifRefreshControl/Resources/Universe  GTRefreshGifHeader.m
//  GIFRefresh
//
//  Created by iShareme on 15/11/4.
//  Copyright © 2015年 iShareme. All rights reserved.
//

#import "GTRefreshGifHeader.h"

@implementation GTRefreshGifHeader

-(void)prepare
{
    [super prepare];
    // 设置普通状态的动画图片
    NSMutableArray *idleImages = [NSMutableArray array];
    for (NSUInteger i = 0; i <= 50; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"stars-%d.png", i]];
        [idleImages addObject:image];
    }
    [self setImages:idleImages forState:MJRefreshStateIdle];
    
    // 设置即将刷新状态的动画图片（一松开就会刷新的状态）
    NSMutableArray *refreshingImages = [NSMutableArray array];
    for (NSUInteger i = 50; i<= 84; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"stars-%d.png", i]];
        [refreshingImages addObject:image];
    }
    [self setImages:refreshingImages forState:MJRefreshStatePulling];
    
    // 设置正在刷新状态的动画图片
    [self setImages:refreshingImages forState:MJRefreshStateRefreshing];
}

@end
