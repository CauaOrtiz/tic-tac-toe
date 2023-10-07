programa {
	
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t

	const inteiro ALTURA_JANELA = 800
	const inteiro LARGURA_JANELA = 800

	caracter vencedor = 'X'
	
	funcao inicio() {
		montar_janela()
		enquanto(verdadeiro){
			pintar_janela()
			desenhar_painel()
			g.renderizar()
		}

		/* Exemplo de matriz representando um tabuleiro jogado
		caracter tabuleiro[3][3] = {
			{'X', 'O', 'X'},
			{'O', 'X', 'O'},
			{'X', 'O', 'X'}
		} Tabuleiro sendo impresso usando loops aninhados
		para(inteiro i = 0; i < 3; i++){
			para(inteiro j = 0; j < 3; j++){
				escreva(tabuleiro[i][j])
			}
			escreva("\n")
		}
		*/
	}

	funcao montar_janela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(LARGURA_JANELA, ALTURA_JANELA)
		g.definir_titulo_janela("Jogo da velha")
	}

	funcao pintar_janela(){
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
	}

	funcao desenhar_painel(){
		g.definir_cor(g.COR_AZUL)
		g.desenhar_retangulo(0, 0, LARGURA_JANELA, 50, falso, verdadeiro)
		g.definir_cor(g.COR_AMARELO)
		g.definir_tamanho_texto(25.0)
		g.desenhar_texto(10, 10, "Vencedor: " + vencedor)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 532; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */