//
//  Jogador.h
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Jogador : NSObject

@property NSNumber *Pont;
@property NSNumber *qtdJogadas;
@property NSNumber *pontAtual;
@property NSString *nome;

-(Jogador*) initWithPont:(NSNumber*)pont qtdJogadas:(NSNumber*)jogadas pontAtual:(NSNumber*)atual nome:(NSString*)n;

@end
