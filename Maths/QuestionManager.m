//
//  QuestionManager.m
//  Maths
//
//  Created by Fariha on 6/6/18.
//  Copyright © 2018 Bootcamp. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init {
    if (self = [super init]) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)timeOutput {
    
    NSTimeInterval totalTime = 0;
    
    for (Question* question in self.questions) {
        totalTime += [question timeToAnswer];
    }
    
    if (self.questions.count != 0) {
        return [NSString stringWithFormat:@"total time: %.0fs, average time: %.0fs", totalTime, totalTime/self.questions.count];
    } else {
        return @"total time: 0s, average time: 0s";
    }

}

@end
