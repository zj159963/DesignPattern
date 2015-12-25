//
//  CHChargeSetter.m
//  StrategyPattern
//
//  Created by yicha on 12/25/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHChargeSetter.h"
#import "CHRebateCharge.h"
#import "CHReduceCharge.h"
#import "CHOriginalCharge.h"

@implementation CHChargeSetter

+ (__kindof CHBaseCharge *)createChargeWithType:(CHChargeType)type
{
  switch (type) {
    case CHChargeTypeRebate: {
      return [CHRebateCharge chargeWithRebate:0.8];
      break;
    }
    case CHChargeTypeReduce: {
      return [CHReduceCharge chargeaWithTargetValue:100.0 reduceValue:10.0];
      break;
    }
    case CHChargeTypeOriginal: {
      return [CHOriginalCharge chargeWithOriginalValue:0.0];
      break;
    }
    default:
      NSAssert(YES, @"Unsupported charge type !");
      return nil;
      break;
  }
}

@end