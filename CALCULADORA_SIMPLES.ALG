algoritmo "Calculadora_Melhorada"
// Autor: Ricardo Fiorini Cuato
// Data: 12/11/2025
// Descrição: Calculadora básica com loop e tratamento de erros.

var
   num1, num2, resultado: real
   operacao, continuar: caractere
   erroOcorreu: logico // Flag para controlar se um erro aconteceu

inicio
   // Loop principal do programa
   repita
      // Inicialização e limpeza
      limpatela()
      erroOcorreu := falso // Reseta a flag de erro a cada nova operação
      
      escreval("--- Calculadora Simples em Portugol ---")
      escreval("---------------------------------------")

      // Solicita as entradas do usuário
      escreval("Digite o primeiro número:")
      leia(num1)

      escreval("Escolha a operação (+, -, *, /):")
      leia(operacao)

      escreval("Digite o segundo número:")
      leia(num2)

      // Processamento usando 'escolha' para melhor legibilidade
      escolha operacao
         caso "+"
            resultado := num1 + num2
         
         caso "-"
            resultado := num1 - num2
         
         caso "*"
            resultado := num1 * num2
         
         caso "/"
            // Tratamento de erro para divisão por zero
            se num2 = 0 entao
               escreval("Erro! Divisão por zero não é permitida.")
               erroOcorreu := verdadeiro
            senao
               resultado := num1 / num2
            fimse
         
         // Tratamento para operadores inválidos
         caso contrario
            escreval("Erro! Operação '", operacao, "' inválida.")
            erroOcorreu := verdadeiro
      fimescolha

      // Exibe o resultado apenas se nenhum erro ocorreu
      escreval("---------------------------------------")
      se nao(erroOcorreu) entao
         escreval("Resultado: ", num1, " ", operacao, " ", num2, " = ", resultado)
      fimse

      // Pergunta se o usuário deseja continuar
      escreval
      escreval("Deseja realizar outra operação? (S/N)")
      leia(continuar)

   // Condição de parada do loop (converte para maiúscula para aceitar 's' ou 'S')
   ate (maiusc(continuar) = "N")

   // Mensagem de despedida
   limpatela()
   escreval("Obrigado por usar a calculadora. Fim do programa.")

fimalgoritmo
