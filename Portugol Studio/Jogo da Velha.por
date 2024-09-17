programa
{
	
	funcao inicio()
	{
		caracter jogo[3][3]
		inteiro l, c, linha, coluna, jogador, ganhou, jogadas, opcao

		faca{
			jogador = 1
			ganhou = 0
			jogadas = 0
			
			para(l = 0; l < 3; l++){
				para(c = 0; c < 3; c++){
					jogo[l][c] = ' '
				}
			}
			faca{
				limpa()
				//Impressão do tabuleiro
				escreva("\n\n 0    1    2\n\n")
				para(l = 0; l < 3; l++){
					para(c = 0; c < 3; c++){
						escreva(" ", jogo[l][c])	
						se(c < 2){
							escreva(" | ")
						}se(c == 2){
							escreva("   ", l)
						}
					}
					se(l<2){
						escreva("\n-------------")
					}
					escreva("\n")
				}
				//Ler coordenadas
				faca{
					faca{
						escreva("\n\nJogador ", jogador, " digite a linha e a coluna da posição desejada\n")
						escreva("Linha: ")
						leia(linha)
						escreva("Coluna: ")
						leia(coluna)
					}enquanto(linha < 0 ou linha > 2 ou coluna < 0 ou coluna > 2)
				}enquanto(jogo[linha][coluna] != ' ')
				
				//Salvar coordenadas
				se(jogador == 1){
					jogo[linha][coluna] = 'O'
					jogador++
				}senao{
					jogo[linha][coluna] = 'X'
					jogador--
				}
				jogadas++
				//Verificar vencedor por linhas
				para(l = 0; l < 3; l++){
					se(jogo[l][0] == 'O' e jogo[l][1] == 'O' e jogo[l][2] == 'O'){
						ganhou = 1
					}
				}
				para(l = 0; l < 3; l++){
					se(jogo[l][0] == 'X' e jogo[l][1] == 'X' e jogo[l][2] == 'X'){
							ganhou = 2
					}
				}
				//Verificar vencedor por colunas
				para(c = 0; c < 3; c++){
					se(jogo[0][c] == 'O' e jogo[1][c] == 'O' e jogo[2][c] == 'O'){
						ganhou = 1
					}
				}
				para(c = 0; c < 3; c++){
					se(jogo[0][c] == 'X' e jogo[1][c] == 'X' e jogo[2][c] == 'X'){
							ganhou = 2
					}
				}
				//Verificar vencedor na diagonal principal
				se(jogo[0][0] == 'O' e jogo[1][1] == 'O' e jogo[2][2] == 'O'){
					ganhou = 1
				}
				se(jogo[0][0] == 'X' e jogo[1][1] == 'X' e jogo[2][2] == 'X'){
					ganhou = 2
				}
				//Verificar vencedor na diagonal secundária
				se(jogo[0][2] == 'O' e jogo[1][1] == 'O' e jogo[2][0] == 'O'){
					ganhou = 1
				}
				se(jogo[0][2] == 'X' e jogo[1][1] == 'X' e jogo[2][0] == 'X'){
					ganhou = 2
				}
				se(jogadas == 9){
					ganhou = 3
				}
			}enquanto(ganhou == 0 e jogadas < 9)
	
			//Impressão do tabuleiro
				escreva("\n\n 0    1    2\n\n")
				para(l = 0; l < 3; l++){
					para(c = 0; c < 3; c++){
						escreva(" ", jogo[l][c])	
						se(c < 2){
							escreva(" | ")
						}se(c == 2){
							escreva("   ", l)
						}
					}
					se(l<2){
						escreva("\n-------------")
					}
					escreva("\n")
				}
			//Declaração do vencedor
				se(ganhou == 1){
					escreva("\n\nParabéns jogador 1 você ganhou!\n\n")
				}
				se(ganhou == 2){
					escreva("\n\nParabéns jogador 2 você ganhou!\n\n")
				}
				se(ganhou == 3){
					escreva("\n\nJogo empatado!\n\n")
				}
				escreva("Digite 1 para jogar novamente: ")
				leia(opcao)
		}enquanto(opcao == 1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2202; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */