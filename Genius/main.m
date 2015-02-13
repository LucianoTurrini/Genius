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
    
        //Exibe menu
        printf("\n 1)Cadastrar usuario \n\n 2)Jogar \n\n 0)Sair do Jogo \n\n Entre com o número opcão desejada: " );
        
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
                NSLog (@"A opção não existe!");
                break;
        }
       
    }
    //return 0;
}
