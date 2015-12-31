//
//  CHOperationSetter.h
//  Version0.2
//
//  Created by yicha on 12/24/15.
//  Copyright © 2015 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CHBaseOperation;

@interface CHOperationSetter : NSObject

+ (CHBaseOperation *)createOperationWithOperator:(NSString *)anOperator;

@end