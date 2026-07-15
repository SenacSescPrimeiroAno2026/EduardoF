programa
{
	funcao inicio()
	{
		
		cadeia nome, placa, tipo
		cadeia cadastro, cupom, noite
		inteiro horas
		real valorHora
		real subtotal
		real desconto
		real valorFinal
		real valorPago

	
		escreva("Nome do motorista: ")
		leia(nome)
		escreva("Placa: ")
		leia(placa)
		escreva("Tipo do veículo (carro, moto etc...): ")
		leia(tipo)
		escreva("Quantidade de horas: ")
		leia(horas)
		escreva("Cliente cadastrado? (sim ou nao): ")
		leia(cadastro)
		escreva("Possui cupom? (sim ou nao): ")
		leia(cupom)
		escreva("Ficou durante a noite? (sim ou nao): ")
		leia(noite)
		escreva("Valor pago: ")
		leia(valorPago)
		se (tipo == "carro")
		{
			valorHora = 8
		}
		senao
		{
			se (tipo == "moto")
			{
				valorHora = 5
			}
			senao
			{
				valorHora = 12
			}
		}
		subtotal = valorHora * horas

		
		se (noite == "sim")
		{
			subtotal = subtotal + 20
		}
		desconto = 0

		se (cadastro == "sim" e horas >= 5)
		{
			desconto = subtotal * 0.15
		}
		senao
		{
			se (cupom == "sim" ou horas >= 8)
			{
				desconto = subtotal * 0.10
			}
		}
		
		
		valorFinal = subtotal - desconto

	
		escreva("\n")
		escreva("\nNome: ", nome)
		escreva("\nPlaca: ", placa)
		escreva("\nTipo: ", tipo)
		escreva("\nHoras: ", horas)
		escreva("\nValor por hora: R$ ", valorHora)
		escreva("\nSubtotal: R$ ", subtotal)
		escreva("\nDesconto: R$ ", desconto)
		escreva("\nValor final: R$ ", valorFinal)
		escreva("\nValor pago: R$ ", valorPago)

		
		se (valorPago >= valorFinal)
		{
			escreva("\nTroco: R$ ", valorPago - valorFinal)
			escreva("\nPagamento suficiente!")
		}
		senao
		{
			escreva("\nFaltam: R$ ", valorFinal - valorPago)
			escreva("\nPagamento insuficiente!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 323; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */