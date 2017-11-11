//
//  PlayerManager.h
//  SnakeLadders
//
//  Created by Larry Luk on 2017-11-07.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property NSMutableArray <Player *>* players;
@property NSInteger currentIndex;

-(void) createPlayers:(NSInteger)numberOfPlayers;

-(BOOL) playerRoll;

@end
