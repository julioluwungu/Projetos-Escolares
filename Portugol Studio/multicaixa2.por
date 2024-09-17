programa
{
	// Simulador de Multicaixa
	inclua biblioteca Texto --> t
	funcao inicio()
	{
		inteiro numero, opcao1, opcao2, senha, conta
		real saldo = 1500000.00, levantamento, deposito, valor
		cadeia continuar
		
		escreva("=========================\n")
		escreva("   MULTICAIXA VIRTUAL\n")
		escreva("-------------------------\n")
		escreva("Digite abaixo a sua senha.\n")
		escreva("Senha: ")
		leia(senha)
		escreva("=========================\n")
		// Verificar se a senha é válida ou não
		se (senha != 1234){
			limpa()
			escreva("Senha incorreta. Tente novamente.\n")
		}senao{
				faca{
					limpa()
					escreva("=========================\n")
					escreva("O QUE DESEJA FAZER?\n")
					escreva("-------------------------\n")
					escreva("[1] Levantamento\n")
					escreva("[2] Depósito\n")
					escreva("[3] Pagamento de Serviços\n")
					escreva("[4] Consultar\n")
					escreva("[5] Sair\n")
					escreva("-------------------------\n")
					escreva("Opção: ")
					leia(opcao1)
					escreva("=========================\n")
					limpa()
				
					escolha(opcao1){
					caso 1: escreva("Digite o valor do levantamento: ")
						   leia(levantamento)
						   limpa()
						   se (levantamento <= saldo){
						   	 saldo = saldo - levantamento
						   	 escreva("Levantamento efectuado com sucesso.\n")
						   }senao{
						   	 escreva("Saldo insuficiente.\n")
						   }
					pare
					caso 2: escreva("Digite o valor do depósito: ")
						   leia(deposito)
						   limpa()
						   saldo = saldo + deposito
						   escreva("Depósito efectuado com sucesso.\n")
					pare
					caso 3: escreva("===============================\n")
						   escreva("QUAL SERVIÇO DESEJA EFECTUAR?\n")
						   escreva("-------------------------------\n")
						   escreva("[1] TV a cabo\n")
						   escreva("[2] Energia\n")
						   escreva("-------------------------------\n")
						   escreva("Opção: ")
						   leia(opcao2)
						   escreva("===============================\n")
						   limpa()
						   escolha(opcao2){
						   caso 1: escreva("Digite quanto deseja pagar: ")
						   		 leia(valor)
						   		 se (valor <= saldo){
							   	 	 saldo = saldo - valor
							   	 	 escreva("\nDigite o número da conta em que deseja pagar.\n")
							   	 	 escreva("Conta: ")
							   	 	 leia(conta)
							   	 	 limpa()
									 escreva("Serviço efectuado com sucesso.\n")
							     }senao{
							   		escreva("Saldo insuficiente.\n")
						   		}
						   pare
						   caso 2: escreva("Digite quanto deseja pagar: ")
						   		 leia(valor)
						   		 se (valor <= saldo){
							   	 	 saldo = saldo - valor
							   	 	 escreva("\nDigite o número da conta em que deseja pagar.\n")
							   	 	 escreva("Conta: ")
							   	 	 leia(conta)
							   	 	 limpa()
									 escreva("Serviço efectuado com sucesso.\n")
							     }senao{
							   		escreva("Saldo insuficiente.\n")
							     }
						   pare
						   }
					pare
					caso 4: escreva("O seu saldo atual é de " + saldo + "\n")
					pare
					caso 5: escreva("Saindo...")
					pare
					caso contrario: escreva("Opção inválida. Tente novamente.\n")
					}
					se(opcao1 == 5){
					pare	
					}senao{
						escreva("\nDeseja continuar? [S/N]\n")
						leia(continuar)
						// Colocar tudo o que está dentro da variável em maiúsculo
						continuar = t.caixa_alta(continuar)
					}
					
				}enquanto(continuar == "S")
				limpa()
				escreva("Saindo...\n")
	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 361; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */