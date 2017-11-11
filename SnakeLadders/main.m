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
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BOOL gameOn = YES;
        //        Player *player = [[Player alloc]init];
        PlayerManager *playermanager = [[PlayerManager alloc]init];
        
        NSLog(@"Welcome to Snake and Ladder - Command Line Version.");
        
        while (true) {
            NSLog(@"How many number of players?");
            NSString *numberInputStr = [InputHandler userInput];
            NSInteger numberInput = [numberInputStr intValue];
            if (numberInput > 0) {
                [playermanager createPlayers:numberInput];
                break;
            } else {
                NSLog(@"Invalid input, please try again.");
            }
        }
        
       
        
        
        
        while (gameOn) {

            NSLog(@"Please type r to roll.\nPlease type exit to terminate game.");

            NSString* userInputRoll = [InputHandler userInput];

            if ([userInputRoll isEqualToString: @"exit"]) {
                gameOn = NO;
            } else if ([userInputRoll isEqualToString: @"r"]){
                if([playermanager playerRoll] == YES) {
                    break;
                }
                
//                if (player.gameOver == YES){
//                    NSLog(@"You have reached the end, congrats!");
//                    break;

//                }

            }

        }
        
        NSLog(@"Thanks for playing, have a great day.");
        
    
    }
    
    return 0;
}
