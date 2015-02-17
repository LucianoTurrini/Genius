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
    int melhorPont;
    int qtdJogadas;
    int pontAtual;
    
}

@property int melhorPont;
@property int qtdJogadas;
@property int pontAtual;
@property NSString *nome;




@end
