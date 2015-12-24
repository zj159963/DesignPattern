//
//  main.m
//  Version0.2
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CHOperation.h"

void operator() {
  NSLog(@"Please input a value:\n");
  CGFloat value = 0.0;
  scanf("%lf", &value);
  
  NSLog(@"Please input an operator:\n");
  char charOperator;
  scanf("%s", &charOperator);
  NSString *operator = [NSString stringWithCString:&charOperator encoding:NSStringEncodingConversionAllowLossy];
  NSLog(@"Please input another value:\n");
  CGFloat anotherValue = 0.0;
  scanf("%lf", &anotherValue);
  
  CHBaseOperation *operation = [CHOperationSetter createOperationWithOperator:operator];
  id result = [operation resultOfValue:value anotherValue:anotherValue];
  NSString *consoleOutPutString = [result isKindOfClass:NSString.class] ? @"The result is" : @"An error occured:";
  NSLog(@"%@", [NSString stringWithFormat:@"%@ %@", consoleOutPutString, result]);
}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    char terminal;
    while (strcmp(&terminal, "YES")) {
      operator();
      NSLog(@"Stop calculate input YES, else input any other keys.\n");
      scanf("%s", &terminal);
    }
  }
  return 0;
}
