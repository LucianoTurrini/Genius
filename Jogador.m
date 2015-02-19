//
//  Jogador.m
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador

@synthesize melhorPont;
@synthesize qtdJogadas;
@synthesize pontAtual;
@synthesize nome;

-(id) initWithPont:(NSNumber*)mP qtdJogadas:(int)jogadas pontAtual:(NSNumber*)atual nome:(NSString*)n
{
    self = [super init];
    if (self)
    {
        melhorPont = mP;
        qtdJogadas = jogadas;
        pontAtual = atual;
        nome = n;
    }
    return self;
}

-(void)ExibirRanking {
    printf("%8s  ", [[melhorPont stringValue]lossyCString]);
    printf("              ");
    printf("%8s", [nome UTF8String]);
    printf("       ");
    printf("%8i\n", qtdJogadas);
}

-(void)QtdJogadas {
    qtdJogadas = qtdJogadas + 1;;
    
}


@end


