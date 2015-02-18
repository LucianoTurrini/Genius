//
//  Jogador.m
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador

@synthesize Pont;
@synthesize qtdJogadas;
@synthesize pontAtual;
@synthesize nome;

-(Jogador*) initWithPont:(NSNumber*)pont qtdJogadas:(NSNumber*)jogadas pontAtual:(NSNumber*)atual nome:(NSString*)n
{
    self = [super init];
    if (self)
    {
        Pont = pont;
        qtdJogadas = jogadas;
        pontAtual = atual;
        nome = n;
    }
    return self;
}


@end


