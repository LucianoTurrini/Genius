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
    int melhorPont, qtdJogadas, pontAtual;
    NSString *nome;
    
}

@property int melhorPont, qtdJogadas, pontAtual;
@property NSString *nome;




@end
