//
//  CHExperience.m
//  Resume
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHExperience.h"

@implementation CHExperience

#pragma mark - Setters and Getters
- (void)setCompany:(NSString *)company
{
  _company = company.copy;
}

- (void)setArea:(NSString *)area
{
  _area = area.copy;
}

- (void)setDate:(NSString *)date
{
  _date = date.copy;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"\nCompany %@.\nDate: %@.\nArea %@.\n", self.company, self.date, self.area];
}

#pragma mark - Copying
- (id)copyWithZone:(NSZone *)zone {
  CHExperience *experience = [[CHExperience allocWithZone:zone] init];
  experience.company = self.company.copy;
  experience.area = self.area.copy;
  experience.date = self.date.copy;
  return experience;
}

@end