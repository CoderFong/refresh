//
//  ViewController.m
//  PBRefreshHelper
//
//  Created by Playboy on 2018/4/24.
//  Copyright © 2018年 Playboy. All rights reserved.
//

#import "ViewController.h"
#import "PBRefreshHelper.h"

static NSString * const kCell = @"cell";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configure];
}

- (void)configure {
    [self configureData];
    [self configureView];
}
- (void)configureData {
    
}
- (void)configureView {
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCell];
    [PBRefreshHelper headerRefresh:self.tableView withTarget:self action:@selector(headerRefreshMethod)];
    [PBRefreshHelper footerRefresh:self.tableView withTarget:self action:@selector(footerRefreshMethod)];
}

- (void)headerRefreshMethod {
    [self.tableView.mj_header endRefreshing];
}
- (void)footerRefreshMethod {
    [self.tableView.mj_footer endRefreshing];
}

#pragma mark - <UITableViewDelegate,UITableViewDataSource>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCell forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%zd",indexPath.row];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
