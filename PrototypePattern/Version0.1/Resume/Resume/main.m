//
//  main.m
//  Resume
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHHeader.h"


NSArray <CHResume *>* tenResumes() {
  /* I wanna 10 resumes. */
  CHExperience *experienceClass = CHExperience.new;
  experienceClass.company = @"Yicha";
  experienceClass.area = @"Beijing ZhiChun Road";
  CHResume *resumeClass = [CHResume resumeWithAName:@"Chris"];
  resumeClass.gender = CHGenderMale;
  resumeClass.age = 23;
  resumeClass.experience = experienceClass;
  
  NSMutableArray *resumes = NSMutableArray.new;
  while (resumes.count != 10) {
    [resumes addObject:resumeClass.copy];
  }
  for (CHResume *resume in resumes) {
    NSLog(@"%@", resume);
  }
  return [[NSArray alloc] initWithArray:resumes copyItems:YES];
}

NSArray <CHResume *>* threeResumes() {
  CHExperience *experienceClass = CHExperience.new;
  experienceClass.company = @"Yicha";
  experienceClass.area = @"Beijing";
  experienceClass.date = @"2015-1016";
  CHResume *resume0 = [CHResume resumeWithAName:@"Chris"];
  resume0.gender = CHGenderMale;
  resume0.age = 23;
  resume0.experience = experienceClass;
  
  CHResume *resume1 = resume0.copy;
  resume1.experience.company = @"Youzhuo";
  resume1.experience.date = @"2014-2015";
  resume1.experience.area = @"Haerbin";
  
  CHResume *resume2 = resume0.copy;
  resume2.experience.company = @"Beijing Defenghe";
  resume2.experience.date = @"2015-2015";
  resume2.experience.area = @"Beijing";
  
  return @[resume0, resume1, resume2];
}

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    
  }
  return 0;
}