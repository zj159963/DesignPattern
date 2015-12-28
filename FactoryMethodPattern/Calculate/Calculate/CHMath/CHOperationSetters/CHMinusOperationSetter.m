//
//  CHMinusOperatorSetter.m
//  Calculate
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHMinusOperationSetter.h"
#import "CHMinusOperation.h"

@implementation CHMinusOperationSetter

+ (CHBaseOperation *)createOperation
{
  return CHMinusOperation.new;
}

@end