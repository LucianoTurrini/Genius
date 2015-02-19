//
//  Jogador.h
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Jogador : NSObject
{
    NSString *nome;
    NSNumber *melhorPont;
    NSNumber *qtdJogadas;
    NSNumber *pontAtual;
    
}

@property NSNumber *melhorPont;
@property NSNumber *qtdJogadas;
@property NSNumber *pontAtual;
@property NSString *nome;

-(id) initWithPont:(NSNumber*)mP qtdJogadas:(NSNumber*)qtdJo pontAtual:(NSNumber*)pontA nome:(NSString*)n;
-(void)ExibirRanking;


@end
