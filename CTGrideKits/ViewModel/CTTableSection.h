//
//  CTTableSection.h
//  CTGrideKitsDemo
//
//  Created by wenjie on 2017/7/13.
//  Copyright © 2017年 Demo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CTTableRow;

@interface CTTableSection : NSObject

@property (nonatomic, strong) NSMutableArray < __kindof CTTableRow *>*rows;

@end
