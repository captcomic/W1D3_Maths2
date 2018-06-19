//
//  Question.m
//  Maths
//
//  Created by Fariha on 6/6/18.
//  Copyright © 2018 Bootcamp. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        // generate two random numbers between 10 and 100
        _leftValue = arc4random_uniform(91) + 10;
        _rightValue = arc4random_uniform(91) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)timeToAnswer {
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

- (void)generateQuestion {
    
}

@end
