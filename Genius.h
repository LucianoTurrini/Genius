//
//  Genius.h
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface Genius : NSObject
{
    NSArray *cores;
    NSMutableArray *sequencia; // For refactoring.
    NSMutableArray *jogadores;
    bool gameOver;
}

@property NSArray * cores;
@property NSArray * sequencia;
@property NSMutableArray *jogadores;

-(void) ExibirRanking;
-(void) addJogador: (NSObject *) j;

-(id) initWithJogadores: (NSMutableArray *)jo;
-(NSString *)randomColour;
-(NSString *)userLogin;
-(void)playTutorial;
-(NSString *)showColour:(int)turns;
-(void)clear;
-(void)start;
-(void)pressEnter;
-(NSMutableArray *)retrievePlayerSequence:(int)turns;
-(int)convertColour:(NSString *)colour;

-(BOOL)compare:(NSArray*)sequence withPlayerSequence:(NSArray*)playerSequence;


@end
