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

-(id) initWithJogadores: (NSMutableArray *)jo;
-(NSString *)randomColour;
-(NSString *)userLogin;
-(void)playTutorial;
-(NSString *)showColour;
-(void)clear;
-(void)start;
-(BOOL)try:(NSMutableArray *)sequencia;

//-(void) CriarCores;
-(void) CriarSequencia : (NSString *)cor;
-(void) ExibirRanking;
-(void) addJogador: (NSObject *) j;

@end
