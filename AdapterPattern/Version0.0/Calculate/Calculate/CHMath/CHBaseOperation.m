//
//  CHBaseMath.m
//  Version0.2
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHBaseOperation.h"

NSString * const CHOperationErrorDomain = @"kCHOperationErrorDomain";

@implementation CHBaseOperation

- (id)resultOfValue:(CGFloat)value anotherValue:(CGFloat)anotherValue
{
  NSError *error = [self operationError];
  return error;
}

- (NSError *)operationError
{
  return [NSError errorWithDomain:CHOperationErrorDomain code:CHBaseOperationError userInfo:@{@"reason":@"unsupported operator!"}];
}

@end