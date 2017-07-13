//
//  CTTableSection.m
//  CTGrideKitsDemo
//
//  Created by wenjie on 2017/7/13.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import "CTTableSection.h"

@implementation CTTableSection

- (NSMutableArray<CTTableRow *> *)rows{
    if (_rows == nil) {
        _rows = @[].mutableCopy;
    }
    return _rows;
}

@end
