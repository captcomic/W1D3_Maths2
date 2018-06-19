//
//  QuestionFactory.m
//  Maths
//
//  Created by Fariha on 6/6/18.
//  Copyright © 2018 Bootcamp. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

NSArray *questionSubclassNames;

- (instancetype)init {
    if (self = [super init]) {
        questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion"];
    }
    return self;
}

- (Question *)generateRandomQuestion {
    
    // generate a random number between 0-2
    // NSUInteger randomIndex = arc4random_uniform(3);
    NSUInteger randomIndex = arc4random_uniform((uint32_t)questionSubclassNames.count);
    
    NSString *className = questionSubclassNames[randomIndex];
    
    return [[NSClassFromString(className) alloc]init];
}

@end
