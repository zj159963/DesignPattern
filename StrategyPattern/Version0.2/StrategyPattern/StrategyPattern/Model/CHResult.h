//
//  CHResult.h
//  StrategyPattern
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CHResult : NSObject

@property (nonatomic, readonly) NSString *total;
@property (nonatomic, readonly) NSString *price;
@property (nonatomic, readonly) NSString *count;

+ (instancetype)resultWithPrice:(NSString *)price count:(NSString *)count;

@end