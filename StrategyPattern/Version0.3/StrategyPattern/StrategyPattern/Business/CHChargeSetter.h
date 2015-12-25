//
//  CHChargeSetter.h
//  StrategyPattern
//
//  Created by yicha on 12/25/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHCharge.h"
@class CHBaseCharge;

@interface CHChargeSetter : NSObject

+ (__kindof CHBaseCharge *)createChargeWithType:(CHChargeType)type;

@end