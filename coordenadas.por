programa
{
	
	funcao inicio()
	{
		inteiro tamTab = 702
		inteiro numQua = 3
		inteiro tamQua = tamTab / numQua
		inteiro cantoX = (800 - tamTab) / 2
		inteiro cantoY = (800 - tamTab) / 2

		inteiro linha = 2
		inteiro coluna = 2

		inteiro minX = cantoX + coluna * tamQua
		inteiro maxX = cantoX + (coluna + 1) * tamQua
		inteiro minY = cantoY + linha * tamQua
		inteiro maxY = cantoY + (linha + 1) * tamQua

		escreva("\nminX: ", minX)
		escreva("\nmaxX: ", maxX)
		escreva("\nminY: ", minY)
		escreva("\nmaxY: ", maxY)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 234; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */