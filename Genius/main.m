//
//  main.m
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "Genius.h"
#import "Fila.h"

void ExibeMenu() {

    printf("#############GENIUS###############\n");
    printf("\n 1)Cadastrar usuario \n\n 2)Jogar \n\n 0)Sair do Jogo" );
    printf("\n\n#################################\n");
    printf("\nEntre com o número da opcão desejada:");
    
}

//Como o a funcao system("clear") não funciona para limpar o Terminal no Xcode, pulamos linhas para fazer uma simulação
void ClearTerminal()
{
        for(int i= 0; i < 100; i++)
                printf("\n");
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char str[50] = {0}; // init all to 0
        // you can create an NS foundation NSString object from the str buffer
        NSString *Nome;
        
        int opcao;
        
        do {
            //Exibe menu
            ExibeMenu();
            //Pegar Opção do Usuario e mandar para o Switch-Case
            scanf ("%i", &opcao);
        
        switch (opcao)
        {
            case 0:
                ClearTerminal();
                break;
                
            case 1:
                do {
                NSLog(@"\nQual será o nome do seu usuário?");
                scanf("%s", str); // read and format into the str buffer
                Nome = [NSString stringWithUTF8String:str];
                NSLog(@"\nSeu nome é %@ ?",Nome );
                printf("1) Sim \n2) Não\n");
                scanf("%i",&opcao);
                jogador = [[Jogador alloc] initWithmelhorPont:0 qtdJogadas:0 pontAtual:0 nome:Nome];
                } while ( opcao >=2);
                [jogo addJogador:jogador];
                ClearTerminal();
                break;
                
            case 2:
                ClearTerminal();
                break;
                
            case 3:
                [jogo ExibirRanking];
                break;
                
            default:
                printf("\n\nA opção não existe! Tente Novamente...\n\n");
                ClearTerminal();
                break;
        }
        } while (opcao != 0);
        
    }
    printf("\n\n####OBRIGADO!####\n\n");
    return 0;
}
