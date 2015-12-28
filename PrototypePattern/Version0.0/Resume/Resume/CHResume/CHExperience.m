//
//  CHExperience.m
//  Resume
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHExperience.h"

@implementation CHExperience

#pragma mark + Conveniences
+ (instancetype)experienceWithDate:(NSString *)date area:(NSString *)area company:(NSString *)company
{
  return [[self alloc] initWithDate:date area:area company:company];
}

#pragma mark - Initializers
- (instancetype)initWithDate:(NSString *)date area:(NSString *)area company:(NSString *)company
{
  self = [super init];
  if (self) {
    _date = date.copy;
    _area = area.copy;
    _company = company.copy;
  }
  return self;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"\nCompany %@.\nDate: %@.\nArea %@.\n", self.company, self.date, self.area];
}

@end