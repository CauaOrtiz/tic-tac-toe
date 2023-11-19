programa {
	
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	inclua biblioteca Mouse --> m

	const inteiro ALTURA_JANELA = 800
	const inteiro LARGURA_JANELA = 800

	caracter vencedor = 'X'
	
	funcao inicio() {

		inteiro tabuleiro[3][3]
		
		montar_janela()
		enquanto(verdadeiro){
			pintar_janela()
			desenhar_painel()
			desenhar_tabuleiro()
			//desenhar_circulo(125, 125)
			//desenhar_x(350, 350)
			ler_jogadas()
			g.renderizar()
		}
	}


	funcao montar_janela(){
		
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(LARGURA_JANELA, ALTURA_JANELA)
		g.definir_titulo_janela("Jogo da velha")
	}

	funcao pintar_janela(){
		
		inteiro roxo = g.criar_cor(31, 34, 87)
		g.definir_cor(roxo)
		g.limpar()
	}

	funcao desenhar_painel(){

		inteiro magenta = g.criar_cor(102, 72, 191)
		inteiro amarelo = g.criar_cor(255, 207, 48)
		g.definir_cor(magenta)
		g.desenhar_retangulo(0, 0, LARGURA_JANELA, 50, falso, verdadeiro)
		g.definir_cor(amarelo)
		g.definir_tamanho_texto(30.0)
		g.desenhar_texto(315, 15, "Vencedor: " + vencedor)
	}

	funcao desenhar_tabuleiro(){

		inteiro magenta = g.criar_cor(102, 72, 191)
		g.definir_cor(magenta)
		g.desenhar_retangulo(50, 70, 702, 702, verdadeiro, falso)
		g.desenhar_linha(50, 280, 750, 280)
		g.desenhar_linha(50, 540, 750, 540)
		g.desenhar_linha(275, 70, 275, 772)
		g.desenhar_linha(525, 70, 525, 772)
	}

	funcao desenhar_circulo(inteiro x, inteiro y){

		inteiro amarelo = g.criar_cor(255, 207, 48)
		g.definir_cor(amarelo)
		g.desenhar_elipse(x, y, 100, 100, falso)

	}

	funcao desenhar_x(inteiro x, inteiro y){

		inteiro vermelho = g.criar_cor(239, 19, 77)
		g.definir_cor(vermelho)
		g.desenhar_linha(x, y, x+100, y+100)
		g.desenhar_linha(x+100, y, x, y+100)
	}

	funcao ler_jogadas(){

		inteiro botao = 0

		se(m.posicao_x() < 283 e m.posicao_x() > 49 e m.posicao_y() < 283 e m.posicao_y() > 49){
			escolha(m.ler_botao()){
				caso 0:
					desenhar_circulo(120, 120)
					pare
				caso 1:
					desenhar_x(120, 120)				
			}
			
		} senao se (m.posicao_x() < 517 e m.posicao_x() > 283 e m.posicao_y() < 283 e m.posicao_y() > 49){
			escolha(m.ler_botao()){
				caso 0:
					desenhar_circulo(320, 120)
					pare
				caso 1:
					desenhar_x(320, 120)					
			}
			
		} senao se (m.posicao_x() < 751 e m.posicao_x() > 517 e m.posicao_y() < 283 e m.posicao_y() > 49){
			escolha(m.ler_botao()){
				caso 0:
					desenhar_circulo(600, 120)
					pare
				caso 1:
					desenhar_x(600, 120)
					pare				
			}
		}
	}
		/*
		TODO:
		1 - criar uma matriz que vai armazenar as jogadas (talvez inicializar com todas as posições=*)
		2 - mapear cada quadrado do tabuleiro na funcao ler_jogadas()
		3 - refatorar a função ler_jogadas():
			a - serão 9 "se" que vão validar o quadrado jogado
			b - cada "se" vai chamar a função desenhar_jogada(), que por sua vez recebe o símbolo e preenche o tabuleiro
			c - cada "se" vai adicionar a jogada à matriz
		4 - criar função vencedor() que vai verificar se existe alguma combinação que resulte em vitória (de acordo com o vídeo), e exibir uma mensagem com o símbolo vencedor\
		*/
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2051; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */