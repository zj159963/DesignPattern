//
//  CHAddOperation.m
//  Version0.2
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHAddOperation.h"

@implementation CHAddOperation

- (id)resultOfValue:(CGFloat)value anotherValue:(CGFloat)anotherValue
{
  return @(value + anotherValue).description;
}

- (NSError *)operationError
{
  return nil;
}

@end