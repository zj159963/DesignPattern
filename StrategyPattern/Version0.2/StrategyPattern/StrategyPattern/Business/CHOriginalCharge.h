//
//  CHOriginalCharge.h
//  StrategyPattern
//
//  Created by yicha on 12/25/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHBaseCharge.h"

@interface CHOriginalCharge : CHBaseCharge

+ (instancetype)chargeWithOriginalValue:(CGFloat)originalValue;

@end