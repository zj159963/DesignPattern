//
//  main.m
//  Version0.0
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

void printResult(double numberA, char operator, double numberB, double result) {
  printf("The result of %lf %c %lf is %f .\n",numberA, operator, numberB, result);
}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    double numberA = 0;
    printf("Input a number please:");
    scanf("%lf", &numberA);
    char operator;
    printf("Input a operator please:");
    scanf("%s", &operator);
    double numberB = 0;
    printf("Input another number please:");
    scanf("%lf", &numberB);
    if (!strcmp(&operator, "+")) {
      printResult(numberA, operator, numberB, numberA + numberB);
    } else if (!strcmp(&operator, "-")) {
      printResult(numberA, operator, numberB, numberA - numberB);
    } else if (!strcmp(&operator, "*")) {
      printResult(numberA, operator, numberB, numberA * numberB);
    } else if (!strcmp(&operator, "/")) {
      if (numberB == 0) {
        printf("The divider can not be zero!\n");
      } else {
        printResult(numberA, operator, numberB, numberA / numberB);
      }
    } else {
      printf("The operator is not suportted !\n");
    }
  }
  return 0;
}