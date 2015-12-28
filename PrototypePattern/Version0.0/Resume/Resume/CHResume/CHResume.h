//
//  CHResume.h
//  Resume
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHExperience.h"

typedef NS_ENUM(NSUInteger, CHGender)
{
  CHGenderMale,
  CHGenderFemale,
  CHGenderUnknown,
};

@interface CHResume : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, assign) CHGender gender;
@property (nonatomic, assign) NSUInteger age;
@property (nonatomic, strong) CHExperience *experience;

+ (instancetype)resumeWithAName:(NSString *)name;

@end