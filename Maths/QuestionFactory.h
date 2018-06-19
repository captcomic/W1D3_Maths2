//
//  QuestionFactory.h
//  Maths
//
//  Created by Fariha on 6/6/18.
//  Copyright © 2018 Bootcamp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

- (Question *)generateRandomQuestion;

@end
