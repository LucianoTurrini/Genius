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
    printf("Antes de tudo, ajuste sua janela  \r\n");
    printf("de acordo com os limites dessa    \r\n");
    printf("tela.                             \r\n");
    printf("Uma sequência de cores aparecerá  \r\n");
    printf("aleatóriamente na tela.           \r\n");
    printf("Começando com 5 cores e avançando \r\n");
    printf("até ondesuas habilidades          \r\n");
    printf("Jedi o levarem                    \r\n");
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
//NAO FUNCIONA
//    NSLog( @"Existem %lu Jogadores", (unsigned long)[jogadores count] );
//    NSSortDescriptor *melhorPontuacao = [[NSSortDescriptor alloc] initWithKey:@"melhorPont" ascending:YES];
//    NSArray *sortDescriptors = @[melhorPontuacao];
//    NSArray *sortedArray = [jogadores sortedArrayUsingDescriptors:sortDescriptors];
    
    //Lista o Ranking
    int n = [jogadores count];
    for(int i=0; i < n; i++) {
    Jogador *aux = [jogadores objectAtIndex: i];
        [aux ExibirRanking];
    }
    
}

-(void) addJogador: (NSObject *) j{
    [jogadores addObject: j];
}

  
@end
