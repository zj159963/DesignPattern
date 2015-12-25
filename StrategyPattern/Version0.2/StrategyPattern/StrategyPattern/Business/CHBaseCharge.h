//
//  CHBaseCharge.h
//  StrategyPattern
//
//  Created by yicha on 12/25/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, CHChargeType) {
  CHChargeTypeRebate,
  CHChargeTypeReduce,
  CHChargeTypeOriginal,
};

@interface CHBaseCharge : NSObject

@property (nonatomic, assign) CGFloat originalValue;

- (NSString *)realCharge;

@end