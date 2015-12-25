//
//  CHReduceCharge.m
//  StrategyPattern
//
//  Created by yicha on 12/25/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHReduceCharge.h"

@implementation CHReduceCharge

+ (instancetype)chargeaWithTargetValue:(CGFloat)targetValue reduceValue:(CGFloat)reduceValue
{
  return [[self alloc] initWithTargetValue:targetValue reduceValue:reduceValue];
}

- (instancetype)initWithTargetValue:(CGFloat)targetValue reduceValue:(CGFloat)reduceValue
{
  self = [super init];
  if (self) {
    _targetValue = targetValue;
    _reduceValue = reduceValue;
  }
  return self;
}

- (instancetype)init
{
  self = [super init];
  if (self) {
    _targetValue = 0.0;
    _reduceValue = 0.0;
  }
  return self;
}

- (NSString *)realCharge
{
  CGFloat realCharge = self.originalValue >= self.targetValue ? self.originalValue - self.reduceValue : self.originalValue;
  return [NSString stringWithFormat:@"%.2f", realCharge];
}

- (NSString *)description
{
  return [NSString stringWithFormat:@"Full: %f, Reduce:%f", self.targetValue, self.reduceValue];
}

@end