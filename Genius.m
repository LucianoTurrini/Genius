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

-(id) initWithJogadores: (NSMutableArray *)jo {
    self = [super init];
    jogadores = [[NSMutableArray alloc]init];
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

-(void)playTutorial {
    printf("##################################\r\n");
    printf("                                  \r\n");
    printf("Antes de tudo, ajuste sua janela  \r\n");
    printf("de acordo com os limites dessa    \r\n");
    printf("tela.                             \r\n");
    printf("Uma sequência de cores aparecerá  \r\n");
    printf("aleatóriamente na tela. Começando \r\n");
    printf("com 5 cores e avançando até onde  \r\n");
    printf("suas habilidades Jedi o levarem   \r\n");
    printf("                                  \r\n");
    printf("Depois disso, tente reproduzir na \r\n");
    printf("mesma ordem usando os números:    \r\n");
    printf("\t1 - AZUL                        \r\n");
    printf("\t2 - AMARELO                     \r\n");
    printf("\t3 - VERDE                       \r\n");
    printf("\t4 - VERMELHO                    \r\n");
    printf("                                  \r\n");
    printf("Boa sorte!                        \r\n");
}
-(NSString *)randomColour {
    NSString *colour;
    int random = (arc4random() % 4) + 1;

    switch (random) {
        case 1:
            colour = @"AMARELO";
            break;
        case 2:
            colour = @"AZUL";
            break;
        case 3:
            colour = @"VERDE";
            break;
        case 4:
            colour = @"VERMELHO";
            break;
    }

    return colour;
}

-(void)start {
    
}

-(void) ExibirRanking{
    NSMutableArray *ranking = [[NSMutableArray alloc]init];
//NSLog( @"%lu", (unsigned long)[jogadores count] );
//    for (Jogador *j in jogadores) {
//        
//        //Ordenar aqui
//        
//    }
    
    //Lista o ranking
    for (Jogador *j in ranking) {
        
        printf("Jogador: %s ---- %s pontos \n ", [j.nome UTF8String], [[j.melhorPont stringValue]lossyCString]);
       
        
    }
    NSLog( @"Existem %lu Jogadores na Lista", (unsigned long)[jogadores count] );
    //Completar
    
}

-(void) addJogador: (NSObject *) j{
    [jogadores addObject: j];
}

  
@end
