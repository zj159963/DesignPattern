//
//  CHReduceCharge.h
//  StrategyPattern
//
//  Created by yicha on 12/25/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHBaseCharge.h"

@interface CHReduceCharge : CHBaseCharge

@property (nonatomic, assign, readonly) CGFloat targetValue;
@property (nonatomic, assign, readonly) CGFloat reduceValue;

+ (instancetype)chargeaWithTargetValue:(CGFloat)targetValue reduceValue:(CGFloat)reduceValue;

@end