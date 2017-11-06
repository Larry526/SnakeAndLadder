//
//  main.m
//  SnakeLadders
//
//  Created by Larry Luk on 2017-11-03.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BOOL gameOn = YES;
        Player *player = [[Player alloc]init];

        NSLog(@"Welcome to Snake and Ladder - Command Line Version.\nPlease type r to roll.\nPlease type exit to terminate game.");
        
        while (gameOn) {
            
            
            NSString* userInputRoll = [InputHandler userInput];
            
            if ([userInputRoll isEqualToString: @"exit"]) {
                gameOn = NO;
            } else if ([userInputRoll isEqualToString: @"r"]){
                [player roll];
          
            }
            
        }
        
        NSLog(@"Thanks for playing, have a great day.");
        
    
    }
    
    return 0;
}
