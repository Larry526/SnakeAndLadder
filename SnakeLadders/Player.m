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
        _gameLogic = @{@4:@14,@9:@31,@20:@38,@29:@84,@40:@59,@51:@67,@63:@81,@17:@7,@64:@60,@89:@26,@95:@75,@99:@78};
        _gameOver = NO;
        
    }
    return self;
}




-(void)roll {
    
    NSInteger diceRoll = (NSInteger)arc4random_uniform(6) + 1;
    NSLog(@"Your dice roll is %li", diceRoll);
    self.currentSquare += diceRoll;
    NSLog(@"You currently landed on square %li", self.currentSquare);
    
    NSNumber *currentSquareObject = @(self.currentSquare);
    

    if ([self.gameLogic objectForKey:currentSquareObject]) {
        self.currentSquare = [self.gameLogic[currentSquareObject] integerValue];
        NSLog(@"You landed on a ladder/snake tile, and is moved to square %li!", self.currentSquare);

    }
    
    if (self.currentSquare > 101) {
        self.gameOver = YES;
    }
    
    
}

@end
