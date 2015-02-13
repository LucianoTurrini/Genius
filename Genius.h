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
    NSMutableArray *sequencia;
    NSMutableArray *jogadores;
    bool gameOver;
}

@property NSArray * cores;
@property NSArray * sequencia;

-(void) CriarCores;
-(void) CriarSequencia : (NSString *)cor;
-(void) ExibirRanking;
-(void) addJogador: (Jogador *) j;


@end
