//
//  InputHandler.m
//  SnakeLadders
//
//  Created by Larry Luk on 2017-11-05.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)userInput {
    
    char answerNumber[255];
    fgets(answerNumber, 255, stdin);
    NSString *inputAnswer = [NSString stringWithUTF8String:answerNumber];
    NSString *parsedInputAnswer = [inputAnswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return parsedInputAnswer;
}

@end
