//
//  CHBaseOperation.h
//  Version0.2
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//
#import <Foundation/Foundation.h>

FOUNDATION_EXPORT NSString * const CHOperationErrorDomain;

typedef NS_ENUM(NSUInteger, CHOperationError)
{
  CHBaseOperationError,
  CHAddOperationError,
  CHMinusOperationError,
  CHMultyOperationError,
  CHDividOperationError,
};

@interface CHBaseOperation : NSObject

- (id)resultOfValue:(CGFloat)value anotherValue:(CGFloat)anotherValue;
- (NSError *)operationError;

@end