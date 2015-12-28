//
//  main.m
//  Calculate
//
//  Created by yicha on 12/28/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHOperation.h"

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    // Add
    CHBaseOperation *add = CHAddOperationSetter.createOperation;
    NSLog(@"Result is: %@", [add resultOfValue:1 anotherValue:2]);
    // Minus
    CHBaseOperation *minus = CHMinusOperationSetter.createOperation;
    NSLog(@"Result is: %@", [minus resultOfValue:1 anotherValue:2]);
    // Multy
    CHBaseOperation *multy = CHMultyOperationSetter.createOperation;
    NSLog(@"Result is: %@", [multy resultOfValue:1 anotherValue:2]);
    // Divid
    CHBaseOperation *divid = CHDividOperationSetter.createOperation;
    NSLog(@"Result is: %@", [divid resultOfValue:1 anotherValue:2]);
  }
  return 0;
}
