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
    int qtdJogadas;
    NSNumber *pontAtual;
    
}

@property NSNumber *melhorPont;
@property int qtdJogadas;
@property NSNumber *pontAtual;
@property NSString *nome;

-(id) initWithPont:(NSNumber*)mP qtdJogadas:(int)qtdJo pontAtual:(NSNumber*)pontA nome:(NSString*)n;
-(void)ExibirRanking;
-(void)QtdJogadas;


@end
