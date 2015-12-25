//
//  CHChargeContext.m
//  StrategyPattern
//
//  Created by yicha on 12/25/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHChargeContext.h"
#import "CHBaseCharge.h"
#import "CHChargeSetter.h"

@interface CHChargeContext ()

@property (nonatomic, strong) CHBaseCharge *charge;

@end

@implementation CHChargeContext

- (instancetype)init
{
  self = [super init];
  if (self) {
    self.type = CHChargeTypeOriginal;
  }
  return self;
}

- (void)setType:(CHChargeType)type {
  _type = type;
  _charge = [CHChargeSetter createChargeWithType:type];
}

- (NSString *)realCharge {
  self.charge.originalValue = self.originalValue;
  return self.charge.realCharge;
}

- (NSString *)description {
  return self.charge.description;
}

@end