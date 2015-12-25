//
//  CHRebateCharge.h
//  StrategyPattern
//
//  Created by yicha on 12/25/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHBaseCharge.h"

@interface CHRebateCharge : CHBaseCharge

@property (nonatomic, assign, readonly) CGFloat rebate;

+ (instancetype)chargeWithRebate:(CGFloat)rebate;

@end