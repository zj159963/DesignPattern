//
//  CHBaseCharge.m
//  StrategyPattern
//
//  Created by yicha on 12/25/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHBaseCharge.h"

@implementation CHBaseCharge

- (instancetype)init
{
  self = [super init];
  if (self) {
    _originalValue = 0.0;
  }
  return self;
}

- (NSString *)realCharge
{
  return [NSString stringWithFormat:@"%.2f", self.originalValue];
}

@end