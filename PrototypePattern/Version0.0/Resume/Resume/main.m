//
//  main.m
//  Resume
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHHeader.h"

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    // I wanna 10 resumes
    
    /* 1 */
    CHExperience *experience0 = [CHExperience experienceWithDate:@"2015-2016" area:@"Peking" company:@"Yicha"];
    CHResume *resume0 = [CHResume resumeWithAName:@"Chris"];
    resume0.gender = CHGenderMale;
    resume0.age = 23;
    resume0.experience = experience0;
    NSLog(@"%@", resume0.description);
    
    /* 2 */
    CHExperience *experience1 = [CHExperience experienceWithDate:@"2015-2016" area:@"Peking" company:@"Yicha"];
    CHResume *resume1 = [CHResume resumeWithAName:@"Chris"];
    resume1.gender = CHGenderMale;
    resume1.age = 23;
    resume1.experience = experience1;
    NSLog(@"%@", resume1.description);
    /* ... */
    
  }
  return 0;
}