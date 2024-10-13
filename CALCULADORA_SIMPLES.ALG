algoritmo "Calculadora_Simples"
var
    num1, num2, resultado: real
    operacao: caractere

inicio
    // Exibe uma mensagem para o usuário informar o primeiro número
    escreval("Digite o primeiro número: ")
    leia(num1)

    // Exibe uma mensagem para o usuário informar o segundo número
    escreval("Digite o segundo número: ")
    leia(num2)

    // Exibe uma mensagem para o usuário escolher a operação
    escreval("Escolha a operação (+, -, *, /): ")
    leia(operacao)

    // Estrutura de decisão para realizar a operação escolhida
    se operacao = "+" entao
        resultado := num1 + num2
    senao
        se operacao = "-" entao
            resultado := num1 - num2
        senao
            se operacao = "*" entao
                resultado := num1 * num2
            senao
                se operacao = "/" entao
                    // Verifica se o divisor é diferente de zero
                    se num2 <> 0 entao
                        resultado := num1 / num2
                    senao
                        escreval("Erro! Divisão por zero não é permitida.")
                        interrompa
                    fimse
                senao
                    escreval("Operação inválida.")
                    interrompa
                fimse
            fimse
        fimse
    fimse

    // Exibe o resultado
    escreval("O resultado da operação é: ", resultado)
fimalgoritmo
