//
//  CHOperationSetter.m
//  Version0.2
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHBaseOperationSetter.h"
#import "CHBaseOperation.h"

@implementation CHBaseOperationSetter

+ (CHBaseOperation *)createOperation
{
  return CHBaseOperation.new;
}

@end