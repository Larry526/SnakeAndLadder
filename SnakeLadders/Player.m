//
//  Player.m
//  SnakeLadders
//
//  Created by Larry Luk on 2017-11-05.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
//        NSMutableDictionary *gameLogic2 = [[NSMutableDictionary alloc]init];
        [_gameLogic setObject:@14 forKey:@4];
        [_gameLogic setObject:@31 forKey:@9];
        [_gameLogic setObject:@7 forKey:@17];
        [_gameLogic setObject:@38 forKey:@20];
        [_gameLogic setObject:@84 forKey:@28];
        [_gameLogic setObject:@59 forKey:@40];
        [_gameLogic setObject:@67 forKey:@51];
        [_gameLogic setObject:@81 forKey:@63];
        [_gameLogic setObject:@60 forKey:@64];
        [_gameLogic setObject:@26 forKey:@89];
        [_gameLogic setObject:@73 forKey:@95];
        [_gameLogic setObject:@78 forKey:@99];

        
        
    }
    return self;
}




-(void)roll {
    
    NSInteger diceRoll = (NSInteger)arc4random_uniform(6) + 1;
    NSLog(@"Your dice roll is %li", diceRoll);
    self.currentSquare += diceRoll;
    NSLog(@"You currently landed on square %li", self.currentSquare);
    NSInteger convertedLogic = (NSInteger)[self.gameLogic objectForKey:[NSNumber numberWithInteger:self.currentSquare]];
    NSLog(@"%li",convertedLogic);
    if (self.currentSquare == convertedLogic) {
        self.currentSquare = convertedLogic;
    }
    
    
}

@end
