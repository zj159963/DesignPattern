//
//  CHDividOperationSetter.m
//  Calculate
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHDividOperationSetter.h"
#import "CHDividOperation.h"

@implementation CHDividOperationSetter

+ (CHBaseOperation *)createOperation
{
  return CHDividOperation.new;
}

@end