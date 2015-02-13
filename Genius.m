//
//  Genius.m
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import "Genius.h"

@implementation Genius

@synthesize cores;
@synthesize sequencia;

-(instancetype) init{
    self = [super init];
    if(self){
        
        gameOver = false;
        
    }
    return self;
}

-(void) CriarCores : (NSArray *)cor{
    // randomico
    //[sequencia addObject: cor];
}

-(void) CriarSequencia : (NSArray *)cor{
    // randomico
    //[sequencia addObject: cor];
}

-(void) ExibirRanking{
    NSMutableArray *ranking;
    
    for (Jogador *j in jogadores) {
        
        //Ordenar aqui
        
    }
    
    //Lista o ranking
    for (Jogador *j in ranking) {
        
        NSLog(@"Jogador: %@; %d pontos \n ", [j nome], [j melhorPont]);
        
        
    }
    
    //Completar
    
}

-(void) addJogador: (Jogador *) j{
    [jogadores addObject: j];
}

  
@end
