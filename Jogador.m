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

-(id) initWithPont:(NSNumber*)mP qtdJogadas:(NSNumber*)jogadas pontAtual:(NSNumber*)atual nome:(NSString*)n
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
    printf("Nome: %s", [nome UTF8String]);
    printf("      ");
    printf("Melhor Pontuação: %s\n", [[melhorPont stringValue]lossyCString]);
}

-(void)setPont:(NSNumber *)valor
{
    melhorPont=valor;
}


@end


