//
//  CHAddOperationSetter.m
//  Calculate
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHAddOperationSetter.h"
#import "CHAddOperation.h"

@implementation CHAddOperationSetter

+ (CHBaseOperation *)createOperation
{
  return CHAddOperation.new;
}

@end