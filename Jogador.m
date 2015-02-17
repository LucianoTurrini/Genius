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

-(id)initWithPont:(NSNumber *)mP qtdJogadas:(NSNumber *)qtdJo pontAtual:(NSNumber *)pontA nome:(NSString *)n{
    self = [super init];
    
    if(self){
        qtdJogadas = qtdJo;
        melhorPont = mP;
        pontAtual = pontA;
        nome = n;
    }
    
    return self;
}




@end


