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
        
        do {
        //Exibe menu
        printf("\n 1)Cadastrar usuario \n\n 2)Jogar \n\n 0)Sair do Jogo \n\n Entre com o número opcão desejada: " );

            //Pegar Opção do Usuario e mandar para o Switch-Case
            scanf ("%i", &opcao);
        
        switch (opcao)
        {
            case 0:
                //Como o a funcao system("clear") não funciona para limpar o Terminal no Xcode, pulamos linhas para fazer uma simulação
                for(int i= 0; i < 100; i++)
                    printf("\n");
                break;
            case 1:
                //Como o a funcao system("clear") não funciona para limpar o Terminal no Xcode, pulamos linhas para fazer uma simulação
                for(int i= 0; i < 100; i++)
                    printf("\n");
                break;
            case 2:
                //Como o a funcao system("clear") não funciona para limpar o Terminal no Xcode, pulamos linhas para fazer uma simulação
                for(int i= 0; i < 100; i++)
                    printf("\n");
                break;
            case 3:
                //Como o a funcao system("clear") não funciona para limpar o Terminal no Xcode, pulamos linhas para fazer uma simulação
                for(int i= 0; i < 100; i++)
                    printf("\n");
                break;
            default:
                //Como o a funcao system("clear") não funciona para limpar o Terminal no Xcode, pulamos linhas para fazer uma simulação
                for(int i= 0; i < 100; i++)
                    printf("\n");
                printf("\n\nA opção não existe! Tente Novamente\n\n");
                break;
        }
        } while (opcao != 0);
        
    }
    return 0;
}
