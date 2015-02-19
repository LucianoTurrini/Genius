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

-(id) initWithJogadores: (NSMutableArray *)jo {
    self = [super init];
    jogadores = [[NSMutableArray alloc]init];
    return self;
}

/*--- Ainda vai usar? --------
 
 -(void) CriarCores{
    
    [sequencia addObject: [self randomColour]];
    
    for (NSObject *j in sequencia) {
        //Exibe as cores
        NSLog(@"%@; ", j);
    }
    
    [NSThread sleepForTimeInterval:2.0]; //Delay
    
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");

    
    //Completar
    
    
} -------------------
 */

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

-(BOOL)compare:(NSArray*)sequence withPlayerSequence:(NSArray*)playerSequence {
    for (int i = 0; i < sizeof sequence; i++) {
        if ([sequence objectAtIndex:i] != [playerSequence objectAtIndex:i]) {
            return false;
        }
    }
    return true;
}

-(NSMutableArray *)retrievePlayerSequence:(int)turns {
    int rawColour;
    NSMutableArray *playerSequence;

    [self clear];
    printf("##################################\r\n");
    printf("                                  \r\n");

    for (int n = 0; n < turns; n++) {
        printf("\tCOR %i: ", n);
        scanf("%i", &rawColour);
        [playerSequence insertObject:[NSNumber numberWithInt:rawColour ] atIndex:n];
    }
    return playerSequence;
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
            NSMutableArray *sequence;

            for (int i = 0; i < turns; i++) {
                [self clear];
                int colour = [self convertColour:[self showColour]];
                [sequence insertObject:[NSNumber numberWithInt:colour] atIndex:i];
                [NSThread sleepForTimeInterval:0.3];
            }

            if ([self compare:sequence withPlayerSequence:[self retrievePlayerSequence:turns]]) {
                turns++;
            } else {
                gameOver = true;
            }
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
    
    //Jogadores teste
    Jogador *jogador = [[Jogador alloc] initWithPont:@0 qtdJogadas:@0 pontAtual:@0 nome:@"User1"];
        [jogador setPont: @20]; [self addJogador:jogador];
    Jogador *jogador2 = [[Jogador alloc] initWithPont:@0 qtdJogadas:@0 pontAtual:@0 nome:@"User2"];
        [jogador2 setPont: @243]; [self addJogador:jogador2];
    Jogador *jogador3 = [[Jogador alloc] initWithPont:@0 qtdJogadas:@0 pontAtual:@0 nome:@"User3"];
        [jogador3 setPont: @15]; [self addJogador:jogador3];
    
    int n = [jogadores count];
    
    //Ordenação
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"melhorPont" ascending:NO];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *sortedArray = [jogadores sortedArrayUsingDescriptors:sortDescriptors];
    
    for(int i=0; i < n; i++) {
        Jogador *aux = [sortedArray objectAtIndex: i];
        [aux ExibirRanking];
    }
    
}

-(void) addJogador: (NSObject *) j{
    [jogadores addObject: j];
}


//-(BOOL)nivel:(int [])vetor eTam:(int) tamanho
//{
//    int j = 0;
//    int k=0;
//    int cor = arc4random()%4 + 1;
//    vetor[0]=cor;
//    int vetorUsuario [tamanho];
//    int resposta;
//
//    NSLog(@"a sequencia é:\n");
//    while(k<tamanho){
//        NSLog(@"%i", vetor[k]);
//        k++;
//    }
//
//    while (j < tamanho)
//    {
//        scanf("%i", &resposta);
//        vetorUsuario [j] = resposta;
//        j++;
//    }
//    BOOL perdeu=false;
//
//    for (int m = 0; m<tamanho; m++)
//    {
//        if(vetorUsuario[m] == vetor[m])perdeu = true;
//    }
//
//    return perdeu;
//}
//
//-(int *)nivel2:(int [])vetor2 eTam:(int)tamanho{
//
//    BOOL subirNivel = false;
//    int NewVetor [tamanho+1];
//    while(subirNivel){
//        for (int i = 0; i<tamanho; i++)
//        {
//            if(i==(tamanho-1)){
//                NewVetor [i] = arc4random()%4 +1;
//            }
//            else
//            {
//                NewVetor[i] = vetor2 [i];
//            }
//
//        }
//        tamanho++;
//        subirNivel=false;
//    }
//
//    return NewVetor;
//}


  
@end
