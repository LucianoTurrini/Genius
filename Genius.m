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

-(NSString *)userLogin {
    [self clear];
    printf("##################################\r\n");
    printf("                                  \r\n");
    printf(" Entre com seu usuário:           \r\n");

    char rawInput[50] = {0};
    scanf("%s", rawInput);
    NSString *user = [NSString stringWithUTF8String:rawInput];

    if ([jogadores containsObject:user]) {
        return user;
    } else {
        return nil;
    }
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

-(NSString *)showColour {
    NSString *colour = [self randomColour];

    printf("##################################\r\n");
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("\t%s\r\n", [colour UTF8String]);
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("##################################\r\n");
    
    return colour;
}

-(BOOL)try:(NSMutableArray *)sequencia {
    return true;
}

-(void)start {
    // Turns are equivalent to how many colours will
    // be stored in a array for later comparison with
    // the player's try.
    // They also represent user points.
    int turns = 5;
    NSString *user = [self userLogin];
    
    if (user) {
        do {
            NSString *colourSequence[turns];

            for (int i = 0; i < turns; i++) {
                [self clear];
                colourSequence[i] = [self showColour];
                [NSThread sleepForTimeInterval:0.3];
            }

            // playerTry
            // if fail -> gameOver = true
            // else -> increase turn
            turns++;
        } while (gameOver == false);
    } else {
        [self clear];
        printf("##################################\r\n");
        printf("                                  \r\n");
        printf("Usuário não cadastrado!           \r\n");
        printf("Faça seu cadastro antes de jogar. \r\n");
    }
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
