//
//  CHDivisorOperation.m
//  Calculate
//
//  Created by yicha on 12/31/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHDivisorOperation.h"

@implementation CHDivisorOperation

NSInteger greatestCommonDivisor(NSInteger value, NSInteger anotherValue)
{
  NSInteger n,c, a = value, b = anotherValue;
  n = b;
  c = a % b;
  while(c !=0 )
  {
    a = b;
    b = c;
    c = a % b;
  }
  return b;
}

- (id)resultOfNumber:(NSNumber *)number anotherNumber:(NSNumber *)anotherNumber
{
  return @(greatestCommonDivisor(number.integerValue, anotherNumber.integerValue)).description;
}

@end