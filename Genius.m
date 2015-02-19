//
//  Genius.m
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import "Genius.h"
#import "Jogador.h"

@implementation Genius

@synthesize cores;
@synthesize sequencia;
@synthesize jogadores;

//Construtor
-(id) initWithJogadores: (NSMutableArray *)jo {
    self = [super init];
    jogadores = [[NSMutableArray alloc]init];
    return self;
}

//Esperar Enter do usuario para prosseguir
-(void)pressEnter {
    printf("##################################\r\n");
    printf("Aperte ENTER para continuar...");
    int c = getchar();
    if (c != EOF) {
        putchar(c);
        c = getchar();
    }
}

// Pega o login do usuário e verifica se existe na lista de
// jogadores.
// Se não existir, volta ao menu.
-(NSString *)userLogin {
    [self clear];
    printf("##################################\r\n");
    printf("                                  \r\n");
    printf(" Entre com seu usuário:  ");

    char rawInput[50] = {0};
    scanf("%s", rawInput);
    NSString *user = [NSString stringWithUTF8String:rawInput];
    
    for (int i = 0; i < [jogadores count]; i++) {
        if ([[[jogadores objectAtIndex:i] nome] isEqualToString:user]) {
            return user;
        }
    }

    return nil;
}

// Exibe um tutorialzinho pra ajudar a galeris.
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
    printf("\t1 - AMARELO                     \r\n");
    printf("\t2 - AZUL                        \r\n");
    printf("\t3 - VERDE                       \r\n");
    printf("\t4 - VERMELHO                    \r\n");
    printf("                                  \r\n");
    printf("Exemplo:                          \r\n");
    printf("Digite \"14223\" quando a         \r\n");
    printf("sequência foi: AZUL, VERMELHO     \r\n");
    printf("AMARELO, AMARELO E VERDE          \r\n");
    printf("                                  \r\n");
    printf("Para uma melhor experiência,      \r\n");
    printf("ajuste sua janela de acordo com os\r\n");
    printf("limites dessa tela.               \r\n");
    printf("Boa sorte!                        \r\n");
    printf("                                  \r\n");
    printf("##################################\r\n");
    [self pressEnter];
}

// Gera uma cor aleatória.
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

// Converte de cor para número.
-(int)convertColour:(NSString *)colour {
    int colourCode;
    if ([colour isEqualToString:@"AMARELO"]) {
        colourCode = 1;
    } else if ([colour isEqualToString:@"AZUL"]) {
        colourCode = 2;
    } else if ([colour isEqualToString:@"VERDE"]) {
        colourCode = 3;
    } else {
        colourCode = 4;
    }
    
    return colourCode;
}

// Limpa a tela.
-(void)clear {
    for (int i = 0; i < 100; i++) {
        printf("\n");
    }
}

// Exibe a cor durante uma partida.
-(NSString *)showColour:(int)turns {
    NSString *colour = [self randomColour];

    printf("##################################\r\n");
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("\t ETAPA\r\n");
    printf("\t\t%i\r\n", turns);
    printf("\t%s\r\n", [colour UTF8String]);
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("                                  \r\n");
    printf("##################################\r\n");
    
    return colour;
}

// Compara as cores geradas com os palpites do jogador.
-(BOOL)compare:(NSArray*)sequence withPlayerSequence:(NSArray*)playerSequence {
    for (int i = 0; i < [sequence count]; i++) {
        if ([sequence objectAtIndex:i] != [playerSequence objectAtIndex:i]) {
            [self clear];
            printf("\n\n#### GAME OVER! ####\n\n");
            [self pressEnter];
            [self clear];
            return false;
        }
    }
    return true;
}

// Pega os palpites do jogador.
-(NSMutableArray *)retrievePlayerSequence:(int)turns {
    int rawColour;
    NSMutableArray *playerSequence;
    playerSequence = [[NSMutableArray alloc]init];

    [self clear];
    printf("##################################\r\n");
    printf("                                  \r\n");
    printf("\t1 - AMARELO                     \r\n");
    printf("\t2 - AZUL                        \r\n");
    printf("\t3 - VERDE                       \r\n");
    printf("\t4 - VERMELHO                    \r\n");
    printf("                                  \r\n");
    printf("##################################\r\n");

    for (int n = 0; n < turns; n++) {
        printf("\tCOR %i: ", n + 1);
        scanf("%i", &rawColour);
        [playerSequence insertObject:[NSNumber numberWithInt:rawColour ] atIndex:n];
    }
    return playerSequence;
}

// Roda o jogo.
-(void)start {
    // Turns are equivalent to how many colours will
    // be stored in a array for later comparison with
    // the player's try.
    // They also represent user points.
    int turns = 4;
    NSString *user = [self userLogin];
    
    if (user) {
        do {
            NSMutableArray *sequence;
            sequence = [[NSMutableArray alloc]init];

            for (int i = 0; i < turns; i++) {
                [self clear];
                int colour = [self convertColour:[self showColour:(i + 1)]];
                [sequence insertObject:[NSNumber numberWithInt:colour] atIndex:i];
                [NSThread sleepForTimeInterval:1.25];
            }

            if ([self compare:sequence withPlayerSequence:[self retrievePlayerSequence:turns]]) {
                turns++;
                
                NSNumber *pontos =  [NSNumber numberWithDouble: (turns*1.5)];
                
                //Pontuação
                for (int i = 0; i < [jogadores count]; i++) {
                    Jogador *jog = [jogadores objectAtIndex:i];
                    if ([[jog nome] isEqualToString:user]) {
                        [jog setPontAtual: pontos];
                        
                        if([jog pontAtual] > [jog melhorPont])
                            [jog setMelhorPont: pontos];
                        
                        [jogadores insertObject:jog atIndex:i];
                    }
                }
                
                printf("Correto! - %f pontos", pontos);
                [NSThread sleepForTimeInterval:1.25];
                [self clear];
                
                
                // REMOVER VETORES?
            } else {
                // EXIBIR PONTUAÇÃO - VARIÁVEL turns
                // ARMAZENAR PONTUAÇÃO DO JOGADOR E INCREMENTAR TENTATIVAS
                gameOver = true;
            }
        } while (gameOver == false);
    } else {
        [self clear];
        printf("##################################\r\n");
        printf("                                  \r\n");
        printf("Usuário não cadastrado!           \r\n");
        printf("Faça seu cadastro antes de jogar. \r\n\n");
        [self pressEnter];
        [self clear];
    }
}

// Exibir o ranking.
-(void) ExibirRanking{
    
    //Ordenação
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"melhorPont" ascending:NO];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *sortedArray = [jogadores sortedArrayUsingDescriptors:sortDescriptors];
    //Imprimir Ranking
    printf("############# RANKING ###############\n\n");
    printf("Melhor Pontuação           Nome\n");
    for(int i=0; i < [jogadores count]; i++) {
        Jogador *aux = [sortedArray objectAtIndex: i];
        [aux ExibirRanking];
    }
    
}

-(void) addJogador: (NSObject *) j{
    [jogadores addObject: j];
}

@end
