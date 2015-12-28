//
//  CHDividOperation.m
//  Version0.2
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHDividOperation.h"

@implementation CHDividOperation

- (id)resultOfValue:(CGFloat)value anotherValue:(CGFloat)anotherValue
{
  if (anotherValue == 0.0) {
    return [self operationError];
  }
  CGFloat result = value / anotherValue;
  return [NSString stringWithFormat:@"%lf", result];
}

- (NSError *)operationError
{
  return [NSError errorWithDomain:CHOperationErrorDomain code:CHDividOperationError userInfo:@{@"reason":@"The divider can not be zero!"}];
}

@end