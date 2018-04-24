//
//  PBRefreshHelper.h
//  PBRefreshHelper
//
//  Created by Playboy on 2018/4/24.
//  Copyright © 2018年 Playboy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJRefresh.h"

@interface PBRefreshHelper : NSObject

+ (MJRefreshHeader *)headerRefresh:(UIScrollView *)scrollView withTarget:(id)target action:(SEL)action;

+ (MJRefreshFooter *)footerRefresh:(UIScrollView *)scrollView withTarget:(id)target action:(SEL)action;

@end
