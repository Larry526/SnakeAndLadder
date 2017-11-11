//
//  Player.h
//  SnakeLadders
//
//  Created by Larry Luk on 2017-11-05.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) NSInteger currentSquare;
@property (nonatomic, strong) NSDictionary *gameLogic;
@property (nonatomic) BOOL gameOver;
@property (nonatomic, strong) NSString *name;


-(void) roll;
-(void) gameOverState;

@end
