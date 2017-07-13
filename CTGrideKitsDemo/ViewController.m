//
//  ViewController.m
//  CTGrideKitsDemo
//
//  Created by wenjie on 2017/7/13.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "ViewController.h"
#import "CTTableViewModel.h"

@interface ViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) CTTableViewModel *tableViewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (UITableView *)tableView{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    }
    return _tableView;
}

- (CTTableViewModel *)tableViewModel{
    if (_tableViewModel == nil) {
        _tableViewModel = [[CTTableViewModel alloc] initWithTableView:self.tableView];
    }
    return _tableViewModel;
}


@end
