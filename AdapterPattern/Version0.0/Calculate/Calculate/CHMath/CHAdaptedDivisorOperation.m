//
//  CHAdaptedDivisorOperation.m
//  Calculate
//
//  Created by yicha on 12/31/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHAdaptedDivisorOperation.h"
#import "CHDivisorOperation.h"

@interface CHAdaptedDivisorOperation ()

@property (nonatomic, strong) CHDivisorOperation *divisorOperation;

@end

@implementation CHAdaptedDivisorOperation

- (instancetype)init
{
  self = [super init];
  if (self) {
    _divisorOperation = CHDivisorOperation.new;
  }
  return self;
}

- (id)resultOfValue:(CGFloat)value anotherValue:(CGFloat)anotherValue
{
  return [self.divisorOperation resultOfNumber:@(value) anotherNumber:@(anotherValue)];
}

@end