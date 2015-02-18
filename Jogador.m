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

-(id) initWithmelhorPont:(NSNumber*)mP qtdJogadas:(NSNumber*)jogadas pontAtual:(NSNumber*)atual nome:(NSString*)n
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

-(NSString *)ExibirInf {
    return nome;
}


@end


