//
//  main.m
//  Maths
//
//  Created by Fariha on 6/5/18.
//  Copyright © 2018 Bootcamp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BOOL gameOver = NO;
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        NSString *right = @"Right!\n";
        NSString *wrong = @"Wrong!\n";
        
        NSLog(@"WELCOME TO MATHS!\n\n\n");

        while (!gameOver) {
            
            Question *question = [questionFactory generateRandomQuestion];
            
            [questionManager.questions addObject:question];
            
            NSLog(@"%@", question.question);

            NSString *inputString = [inputHandler parseString];
            
            if ([inputString isEqualToString:@"quit"]) {
                NSLog(@"%@", [scoreKeeper score]);
                NSLog(@"%@", [questionManager timeOutput]);
                break;
            }
            
            NSInteger inputAnswer = [inputString integerValue];

            if (inputAnswer == question.answer) {
                NSLog(@"%@", right);
                scoreKeeper.right++;
            } else {
                NSLog(@"%@", wrong);
                scoreKeeper.wrong++;
            }

        }
    }
    return 0;
}
