//
//  CTGrideRegisterProtocol.h
//  CTGrideKitsDemo
//
//  Created by wenjie on 2017/7/13.
//  Copyright © 2017年 Demo. All rights reserved.
//

#ifndef CTGrideRegisterProtocol_h
#define CTGrideRegisterProtocol_h

typedef NS_ENUM(NSInteger, CTGrideRegisterType) {
    CTGrideRegisterTypeCode,
    CTGrideRegisterTypeNib,
};

@protocol CTGrideRegisterProtocol <NSObject>

- (void)registerTableViewClassAry:(NSArray *)classAry type:(CTGrideRegisterType)type;


@end

#endif /* CTGrideRegisterProtocol_h */
