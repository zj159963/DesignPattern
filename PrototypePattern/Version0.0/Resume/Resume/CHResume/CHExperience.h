//
//  CHExperience.h
//  Resume
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHExperience : NSObject

@property (nonatomic, readonly, copy) NSString *date;
@property (nonatomic, readonly, copy) NSString *area;
@property (nonatomic, readonly, copy) NSString *company;

+ (instancetype)experienceWithDate:(NSString *)date area:(NSString *)area company:(NSString *)company;

@end