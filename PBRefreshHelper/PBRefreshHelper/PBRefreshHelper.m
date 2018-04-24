//
//  PBRefreshHelper.m
//  PBRefreshHelper
//
//  Created by Playboy on 2018/4/24.
//  Copyright © 2018年 Playboy. All rights reserved.
//

#import "PBRefreshHelper.h"

@implementation PBRefreshHelper

+ (MJRefreshHeader *)headerRefresh:(UIScrollView *)scrollView withTarget:(id)target action:(SEL)action {
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:target refreshingAction:action];
    header.lastUpdatedTimeLabel.hidden = YES;
    scrollView.mj_header = header;
    [header setTitle:@"下拉可以刷新" forState:MJRefreshStateIdle];
    [header setTitle:@"松开立即刷新" forState:MJRefreshStatePulling];
    [header setTitle:@"正在刷新数据中" forState:MJRefreshStateRefreshing];
    return header;
    
    // 自定义动画
    //    NSMutableArray *headerImages = [[NSMutableArray alloc] init];
    //    for (int i = 0; i < 38; i++) {
    //        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"topload%d",i]];
    //        [headerImages addObject:image];
    //    }
    //
    //    MJRefreshGifHeader *header = [MJRefreshGifHeader headerWithRefreshingTarget:target refreshingAction:action];
    //    header.stateLabel.hidden = YES;
    //    header.lastUpdatedTimeLabel.hidden = YES;
    //    scrollView.mj_header = header;
    //    [header setImages:@[headerImages[0]] forState:MJRefreshStateIdle];
    //    [header setImages:headerImages forState:MJRefreshStateRefreshing];
    //
    //
    //    return header;
    
}

+ (MJRefreshFooter *)footerRefresh:(UIScrollView *)scrollView withTarget:(id)target action:(SEL)action {
    MJRefreshBackNormalFooter *footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:target refreshingAction:action];
    [footer setTitle:@"没有更多了" forState:MJRefreshStateNoMoreData];
    scrollView.mj_footer = footer;
    [footer setTitle:@"上拉可以加载" forState:MJRefreshStateIdle];
    [footer setTitle:@"松开立即加载" forState:MJRefreshStatePulling];
    [footer setTitle:@"正在加载更多..." forState:MJRefreshStateRefreshing];
    return footer;
}

@end
