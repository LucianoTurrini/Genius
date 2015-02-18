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
@synthesize jogadores;

-(instancetype) init{
    self = [super init];
    if(self){
        
        gameOver = false;
        
    }
    return self;
}

-(void) addCor{
    
    [sequencia addObject: [self gerarCor]];
    
    for (NSObject *j in sequencia) {
        //Exibe as cores
        NSLog(@"%@; ", j);
    }
    
    [NSThread sleepForTimeInterval:2.0]; //Delay
    
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");

    
    //Completar
    
    
}

-(NSString *) gerarCor{
    NSString *cor;
    
    //Cor aleatória
    //Fazer
    
    return cor;
}

-(void) ExibirRanking{
    NSMutableArray *ranking;
    
    NSLog( @"%lu", (unsigned long)[jogadores count] );
//    for (Jogador *j in jogadores) {
//        
//        //Ordenar aqui
//        
//    }
    
    //Lista o ranking
    for (Jogador *j in ranking) {
        
        printf("Jogador: %s ---- %s pontos \n ", [j.nome UTF8String], [[j.melhorPont stringValue]lossyCString]);
       
        
    }
    
    //Completar
    
}

-(void) addJogador: (NSObject *) j{
    [jogadores addObject: j];
}

  
@end
