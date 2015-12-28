//
//  CHResume.m
//  Resume
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import "CHResume.h"

@implementation CHResume

#pragma mark + Conveniences
+ (instancetype)resumeWithAName:(NSString *)name
{
  return [[self alloc] initWithAName:name];
}

#pragma mark - Initializers
- (instancetype)initWithAName:(NSString *)name
{
  self = [super init];
  if (self) {
    _name = name.copy;
  }
  return self;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"\n---\nName: %@.\nGender: %lu.\nAge: %lu.\n---Experience:%@.", self.name, self.gender, self.age, self.experience.description];
}

#pragma mark - Copying
- (id)copyWithZone:(NSZone *)zone {
  CHResume *resume = [[CHResume allocWithZone:zone] initWithAName:self.name.copy];
  resume.gender = self.gender;
  resume.age = self.age;
  resume.experience = self.experience.copy;
  return resume;
}

@end