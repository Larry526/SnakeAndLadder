//
//  PlayerManager.m
//  SnakeLadders
//
//  Created by Larry Luk on 2017-11-07.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc]init];
        _currentIndex = 0;
    }
    return self;
}

-(void)createPlayers:(NSInteger)numberOfPlayers {
    
    for (int i=0; i < numberOfPlayers; i++) {
        Player *player = [[Player alloc]init];
        player.name = [NSString stringWithFormat:@"Player%d",i+1];
        [self.players addObject:player];
    }
}

-(BOOL)playerRoll {
    Player *currentplayer = [self currentPlayer];
    [currentplayer roll];
    [currentplayer gameOverState];
    self.currentIndex++;
    if (currentplayer.gameOver == YES){
        NSLog(@"%@: You have won the game!",currentplayer.name);
        return YES;
    } else {
        return NO;
    }
}

-(Player*)currentPlayer {
    if ((self.currentIndex % [self.players count]) == 0) {
        self.currentIndex = 0;
    }
    return self.players[self.currentIndex];
}

@end
