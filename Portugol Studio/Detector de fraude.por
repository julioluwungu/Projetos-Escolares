programa
{
	
	funcao inicio()
	{
		real paulo_notas[3] = {15.00, 12.5, 9.00}
		real joao_notas[3] = {17.00, 10.5, 12.00}
		real maria_notas[3] = {20.00, 18.00, 15.5}
		real antonio_notas[3] = {10.00, 8.75, 5.00}
		real ana_notas[3] = {12.5, 11.00, 14.5}
		real notas[3]
		cadeia nome
		inteiro fraude = 0
		
		escreva("Digite o nome do(a) aluno(a): ")
		leia(nome)
		para(inteiro i=0; i<3; i++){
			escreva("Digite a nota do ", i+1, "º trimestre: ")
			leia(notas[i])
		}
		para(inteiro i=0; i<3; i++){	
			se (nome == "Paulo"){
				se (notas[i] != paulo_notas[i]){
					escreva("\nFraude detectada! O aluno ", nome, " alterou a nota do ", i+1, "º trimestre (", paulo_notas[i], ") para ", notas[i], "\n")
				}
			}se (nome == "João"){
				se (notas[i] != joao_notas[i]){
					escreva("\nFraude detectada! O aluno ", nome, " alterou a nota do ", i+1, "º trimestre (", joao_notas[i], ") para ", notas[i], "\n")
				}
			}se (nome == "Maria"){
				se (notas[i] != maria_notas[i]){
					escreva("\nFraude detectada! A aluna ", nome, " alterou a nota do ", i+1, "º trimestre (", maria_notas[i], ") para ", notas[i], "\n")
				}
			}se (nome == "António"){
				se (notas[i] != antonio_notas[i]){
					escreva("\nFraude detectada! O aluno ", nome, " alterou a nota do ", i+1, "º trimestre (", antonio_notas[i], ") para ", notas[i], "\n")
				}
			}se (nome == "Ana"){
				se (notas[i] != ana_notas[i]){
					escreva("\nFraude detectada! A aluna ", nome, " alterou a nota do ", i+1, "º trimestre (", ana_notas[i], ") para ", notas[i], "\n")
				}
			
			}
		}para(inteiro i=0; i<3; i++){
			se (notas[i] == paulo_notas[i] ou notas[i] == joao_notas[i] ou notas[i] == maria_notas[i] ou notas[i] == antonio_notas[i] ou notas[i] == ana_notas[i]){
				fraude = fraude + 0
			}senao{
				fraude = fraude + 1
			}
		}se (fraude == 0){
			escreva("\nNenhuma fraude foi detectada!\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 708; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */