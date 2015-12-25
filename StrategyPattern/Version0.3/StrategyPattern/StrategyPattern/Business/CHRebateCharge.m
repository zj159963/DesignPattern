//
//  CHRebateCharge.m
//  StrategyPattern
//
//  Created by yicha on 12/25/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHRebateCharge.h"

@implementation CHRebateCharge

+ (instancetype)chargeWithRebate:(CGFloat)rebate
{
  return [[self alloc] initWithRebate:rebate];
}

- (instancetype)initWithRebate:(CGFloat)rebate
{
  self = [super init];
  if (self) {
    _rebate = rebate;
  }
  return self;
}

- (instancetype)init
{
  self = [super init];
  if (self) {
    _rebate = 1.0;
  }
  return self;
}

- (NSString *)realCharge
{
  CGFloat realCharge = self.originalValue * self.rebate;
  return [NSString stringWithFormat:@"%.2f", realCharge];
}

- (NSString *)description
{
  return [NSString stringWithFormat:@"Rebate: %f", self.rebate];
}

@end