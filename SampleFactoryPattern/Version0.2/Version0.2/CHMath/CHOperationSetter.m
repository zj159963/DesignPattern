//
//  CHOperationSetter.m
//  Version0.2
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHOperationSetter.h"
#import "CHBaseOperation.h"
#import "CHAddOperation.h"
#import "CHMinusOperation.h"
#import "CHMultyOperation.h"
#import "CHDividOperation.h"

@implementation CHOperationSetter

+ (CHBaseOperation *)createOperationWithOperator:(NSString *)anOperator {
  if ([anOperator isEqualToString:@"+"]) {
    return CHAddOperation.new;
  } else if ([anOperator isEqualToString:@"-"]) {
    return CHMinusOperation.new;
  } else if ([anOperator isEqualToString:@"*"]) {
    return CHMultyOperation.new;
  } else if ([anOperator isEqualToString:@"/"]) {
    return CHDividOperation.new;
  }
  return CHBaseOperation.new;
}

@end