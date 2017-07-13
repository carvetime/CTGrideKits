//
//  CTTableViewModel.m
//  CTGrideKitsDemo
//
//  Created by wenjie on 2017/7/13.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "CTTableViewModel.h"
#import "CTGrideRegisterProtocol.h"

@interface CTTableViewModel ()<CTGrideRegisterProtocol>

@property (nonatomic, weak) UITableView *tableView;

@end

@implementation CTTableViewModel

-(id)initWithTableView:(UITableView *)tableView{
    if (self = [super init]) {
        self->_tableView = tableView;
    }
    return self;
}

#pragma mark - CTGrideRegisterProtocol

- (void)registerTableViewClassAry:(NSArray *)classAry type:(CTGrideRegisterType)type{
    [classAry enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        Class class = NSClassFromString(obj);
        if (type == CTGrideRegisterTypeCode) {
            [self.tableView registerClass:class forCellReuseIdentifier:obj];
        } else {
            [self.tableView registerNib:[UINib nibWithNibName:obj bundle:nil] forCellReuseIdentifier:obj];
        }
    }];
}



@end
