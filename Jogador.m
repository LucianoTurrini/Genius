//
//  Jogador.m
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador

@synthesize nome;
@synthesize melhorPont;
@synthesize qtdJogadas;
@synthesize pontAtual;

-(Jogador*) initWithmelhorPont:(NSNumber*)mP qtdJogadas:(NSNumber*)qtdJo pontAtual:(NSNumber*)pontA nome:(NSString*)n
{
    self = [super init];
    if (self)
    {
        melhorPont = mP;
        qtdJogadas = qtdJo;
        pontAtual = pontA;
        nome = n;
    }
    
    return self;
}

-(void) ExibirInf {
    printf("Nome: %s\n", [nome UTF8String]);
    printf("Melhor Pontuação : %s\n", [[melhorPont stringValue]lossyCString]);
    printf("Número de Jogadas : %s\n", [[qtdJogadas stringValue]lossyCString]);
    printf("Pontuação Atual : %s\n", [[pontAtual stringValue]lossyCString]);
}


@end


