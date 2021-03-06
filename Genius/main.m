//
//  main.m
//  Genius
//
//  Created by Luciano Moreira Turrini on 2/13/15.
//  Copyright (c) 2015 Luciano Moreira Turrini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Genius.h"
#import "Jogador.h"

//Esperar Enter do usuario para prosseguir
void PressEnter() {
    printf("\n\nAperte ENTER para continuar...");
    int c = getchar();
    if (c != EOF) {
        putchar(c);
        c = getchar();
    }

}

void ExibeMenu() {
    
        printf("############# GENIUS ###############\n");
        printf("\n 1)Cadastrar usuario \n\n 2)Jogar \n\n 3)Exibir Ranking \n\n 0)Sair do Jogo" );
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
        // inicializacao do jogo
        NSMutableArray * jogadores = [[NSMutableArray alloc]init];
        Jogador *jogador = [[Jogador alloc] init];
        Genius *jogo = [[Genius alloc] initWithJogadores:jogadores];

        //Jogadores teste
        Jogador *jogador1 = [[Jogador alloc] initWithPont:@0 qtdJogadas:1 pontAtual:@0 nome:@"User1"];
        [jogador1 setMelhorPont: @20]; [jogo addJogador:jogador1];
        Jogador *jogador2 = [[Jogador alloc] initWithPont:@0 qtdJogadas:1 pontAtual:@0 nome:@"User2"];
        [jogador2 setMelhorPont: @80]; [jogo addJogador:jogador2];
        Jogador *jogador3 = [[Jogador alloc] initWithPont:@0 qtdJogadas:1 pontAtual:@0 nome:@"User3"];
        [jogador3 setMelhorPont: @15]; [jogo addJogador:jogador3];
        
        char str[50] = {0};
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
                    ClearTerminal();
                    printf("Digite um nome para o usuário.");
                    printf("\nNome:");
                    scanf("%s", str); // read and format into the str buffer
                    Nome = [NSString stringWithUTF8String:str];
                    printf("\nSeu nome é %s ?\n", [Nome UTF8String]);
                    printf("1) Sim \n2) Não\n");
                    scanf("%i",&opcao);
                    jogador = [[Jogador alloc] initWithPont:@0 qtdJogadas:0 pontAtual:@0 nome:Nome];
                } while ( opcao >=2);
                [jogo addJogador:jogador];
                ClearTerminal();
                break;
                
            case 2:
                [jogo playTutorial];
                [jogo start];
                break;
                
            case 3:
                ClearTerminal();
                [jogo ExibirRanking];
                PressEnter();
                ClearTerminal();
                break;
                
            default:
                
                NSLog (@"Esse opção não existe, digite um numero válido");
                break;
                
        }
            
        }  while (opcao != 0);
        
        printf("\n\n#### OBRIGADO! ####\n\n");
        return 0;
    }}