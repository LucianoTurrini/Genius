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

-(void) CriarCores{
    
    [sequencia addObject: [self randomColour]];
    
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
    printf("Uma sequência de cores aparecerá  \r\n");
    printf("aleatóriamente na tela. Começando \r\n");
    printf("com 5 cores e avançando até onde  \r\n");
    printf("suas habilidades Jedi o levarem...\r\n");
    printf("                                  \r\n");
    printf("Depois disso, tente reproduzir a  \r\n");
    printf("mesma ordem usando os números para\r\n");
    printf("indicar as cores:                 \r\n");
    printf("                                  \r\n");
    printf("\t1 - AZUL                        \r\n");
    printf("\t2 - AMARELO                     \r\n");
    printf("\t3 - VERDE                       \r\n");
    printf("\t4 - VERMELHO                    \r\n");
    printf("                                  \r\n");
    printf("Para uma melhor experiência,      \r\n");
    printf("ajuste sua janela de acordo com os\r\n");
    printf("limites dessa tela.               \r\n");
    printf("Boa sorte!                        \r\n");
    printf("                                  \r\n");
    printf("##################################\r\n");
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

-(void)clear {
    for (int i = 0; i < 100; i++) {
        printf("\n");
    }
}

-(void)showColour {
    printf("##################################\r\n");
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("\t%s\r\n", [[self randomColour] UTF8String]);
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("##################################\r\n");
    
    
}

-(void)start {
    int turns = 5; // They also represent user points.
    
    do {
        [self clear];
        [self showColour];
        [NSThread sleepForTimeInterval:0.5];
        
    } while (gameOver == false);
}

-(void) ExibirRanking{
    NSLog( @"Existem %lu Jogadores", (unsigned long)[jogadores count] );

//NSLog( @"%lu", (unsigned long)[jogadores count] );
//    for (Jogador *j in jogadores) {
//        
//        //Ordenar aqui
//        
//    }
    //Lista o Ranking
    int n = [jogadores count];
    for(int i=0; i < n; i++) {
       //printf("%s",[[jogadores objectAtIndex: i] ExibirInf]);
    }
    
}

-(void) addJogador: (NSObject *) j{
    [jogadores addObject: j];
}

  
@end
