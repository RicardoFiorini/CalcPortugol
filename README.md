# 🧮 Calculadora Simples em Portugol

Este é um projeto de console simples, desenvolvido em Portugol, que simula as operações de uma calculadora básica. O objetivo principal deste algoritmo é demonstrar conceitos fundamentais de programação, como entrada e saída de dados, estruturas condicionais e loops de repetição.

## ✨ Funcionalidades

* **Operações Básicas:** Realiza adição (`+`), subtração (`-`), multiplicação (`*`) e divisão (`/`).
* **Loop de Execução:** Permite que o usuário realize múltiplos cálculos em sequência, sem a necessidade de reiniciar o programa.
* **Tratamento de Erros:** O programa possui validações para impedir operações inválidas, incluindo:
    * Divisão por zero.
    * Uso de um operador não reconhecido (ex: '%', '^').
* **Interface Limpa:** A tela é limpa a cada novo cálculo para facilitar a visualização e a interação do usuário.

## 🚀 Como Usar

Para executar este projeto, você precisará de um ambiente que interprete a linguagem Portugol.

1.  **Ambiente:** Utilize um interpretador como o [VisualG](httpsa://visualg3.com.br/) ou o [Portugol Studio](https://portugol-studio.github.io/).
2.  **Download:** Baixe ou copie o código do arquivo `Calculadora_Melhorada.alg`.
3.  **Execução:**
    * Abra o arquivo no seu interpretador de Portugol.
    * Inicie a execução do algoritmo (geralmente pressionando `F9` ou clicando em "Executar").
    * Siga as instruções exibidas no console.

### Exemplo de Fluxo

1.  O programa solicita o primeiro número.
2.  O programa solicita o operador desejado (+, -, \*, /).
3.  O programa solicita o segundo número.
4.  O resultado da operação (ex: `10 + 5 = 15`) é exibido.
5.  O programa pergunta se você deseja realizar outra operação (`S/N`).
6.  Digitando `S`, o processo recomeça.
7.  Digitando `N`, o programa exibe uma mensagem de despedida e encerra.

## 🛠️ Estruturas Utilizadas

* **Variáveis:** `real` para números e `caractere` para o operador e controle do loop.
* **Controle de Fluxo:**
    * `escolha ... caso`: Utilizado para selecionar a operação matemática correta com base na entrada do usuário. É uma alternativa mais limpa e legível a múltiplos `se/senao` aninhados.
    * `se ... senao`: Usado para o tratamento de erro da divisão por zero.
* **Loop:**
    * `repita ... ate`: Garante que o bloco de código da calculadora seja executado pelo menos uma vez e continue até que o usuário decida parar (digitando 'N').
* **Funções de Biblioteca:**
    * `leia()`: Para capturar a entrada do usuário.
    * `escreval()`: Para exibir mensagens e resultados no console.
    * `limpatela()`: Para limpar o console a cada iteração do loop.
    * `maiusc()`: Para validar a condição de saída do loop (aceitando 'n' ou 'N').
