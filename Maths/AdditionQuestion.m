//
//  AdditionQuestion.m
//  Maths
//
//  Created by Fariha on 6/5/18.
//  Copyright © 2018 Bootcamp. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    
    // set super.answer here
    // set super.question here
    
    super.question = [NSString stringWithFormat:@"%ld + %ld = ?", super.leftValue, super.rightValue];
    super.answer = super.leftValue + super.rightValue;
}

@end
