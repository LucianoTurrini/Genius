//
//  main.m
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int opcao;
        NSLog(@"\n1)Cadastrar usuario\n\n2)Jogar\n\n0)Sair do Jogo\n\nEntre com o número opcão desejada:" );
        
        //Pegar Opção do Usuario e mandar para o Switch-Case
        scanf ("%i", &opcao);
        
        switch (opcao)
        {
            case 0:
                //implement
                break;
            case 1:
                //implement
                break;
            case 2:
                //implement
                break;
            case 3:
                //implement
                break;
            default:
                NSLog (@"Integer out of range");
                break;
        }
       
    }
    return 0;
}
