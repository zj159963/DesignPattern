//
//  CHMath.m
//  Version0.1
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHMath.h"

@implementation CHMath

- (id)resultOfValue:(CGFloat)value anotherValue:(CGFloat)anotherValue operator:(NSString *)anOperator {
  if ([anOperator isEqualToString:@"+"]) {
    return @(value + anotherValue).description;
  } else if ([anOperator isEqualToString:@"-"]) {
    return @(value - anotherValue).description;
  } else if ([anOperator isEqualToString:@"*"]) {
    return @(value * anotherValue).description;
  } else if ([anOperator isEqualToString:@"/"]) {
    if (anotherValue == 0.0) {
      return [self operationError];
    } else {
      return @(value / anotherValue).description;
    }
  } else {
    return [self operationError];
  }
  return [self operationError];
}

- (NSError *)operationError {
  NSError *error = [NSError errorWithDomain:@"kCHOperationError" code:0 userInfo:nil];
  return error;
}

@end