//
//  main.m
//  Calculate
//
//  Created by yicha on 12/31/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHOperation.h"

int main(int argc, const char * argv[]) {
  CHBaseOperation *operation = [CHOperationSetter createOperationWithOperator:@"dvr"];
  NSLog(@"%@", [operation resultOfValue:15 anotherValue:30]);
  return 0;
}
