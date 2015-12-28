//
//  CHMultyOperationSetter.m
//  Calculate
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHMultyOperationSetter.h"
#import "CHMultyOperation.h"

@implementation CHMultyOperationSetter

+ (CHBaseOperation *)createOperation
{
  return CHMultyOperation.new;
}

@end