//
//  CHResult.m
//  StrategyPattern
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHResult.h"

@implementation CHResult

+ (instancetype)resultWithPrice:(NSString *)price count:(NSString *)count
{
  return [[self alloc] initWithPrice:price count:count];
}

- (instancetype)initWithPrice:(NSString *)price count:(NSString *)count
{
  self = [super init];
  if (self) {
    _price = price.copy;
    _count = count.copy;
    CGFloat total = _count.doubleValue * _price.doubleValue;
    _total = [NSString stringWithFormat:@"%.2f", total];
  }
  return self;
}

@end