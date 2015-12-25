//
//  CHChargeContext.h
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

@interface CHChargeContext : NSObject

@property (nonatomic, assign) CGFloat originalValue;
@property (nonatomic, assign) CHChargeType type;

- (NSString *)realCharge;

@end