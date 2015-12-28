//
//  CHExperience.h
//  Resume
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHExperience : NSObject <NSCopying>

@property (nonatomic, copy) NSString *date;
@property (nonatomic, copy) NSString *area;
@property (nonatomic, copy) NSString *company;

@end