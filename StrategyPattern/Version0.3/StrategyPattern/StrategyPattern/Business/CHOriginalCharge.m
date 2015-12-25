//
//  CHOriginalCharge.m
//  StrategyPattern
//
//  Created by yicha on 12/25/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHOriginalCharge.h"

@implementation CHOriginalCharge

+ (instancetype)chargeWithOriginalValue:(CGFloat)originalValue {
  return [[self alloc] initWithOriginalValue:originalValue];
}

- (instancetype)initWithOriginalValue:(CGFloat)originalValue
{
  self = [super init];
  if (self) {
    self.originalValue = originalValue;
  }
  return self;
}

- (NSString *)realCharge {
  return [NSString stringWithFormat:@"%.2f", self.originalValue];
}

- (NSString *)description {
  return @"None";
}

@end