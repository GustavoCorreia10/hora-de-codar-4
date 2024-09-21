/* Vamos criar uma lista de compras. 
Crie uma array de frutas, exiba-a ao usuário e, em seguida, peça ao usuário para digitar o nome de uma das frutas.
Caso a fruta esteja no array, remova-a e exiba a mensagem "Fruta foi retirada da lista". 
Peça novamente para o usuário digitar o nome de uma fruta para ser removida. 
Sempre que o usuário procurar por uma fruta que não está no array exiba a mensagem "Fruta indisponível no nosso mercado". 
Quando o array não possuir mais itens dentro de si, escreva "Lista de compras finalizada". */


programa
{
    funcao inicio()
    {
        cadeia frutas[5] = {"Maçã", "Banana", "Laranja", "Manga", "Pera"}
        inteiro quantidade_frutas = 5
        cadeia fruta_usuario
        logico fruta_encontrada

        enquanto (quantidade_frutas > 0)
        {
            escreva("Lista de compras atual: \n")
            para (inteiro i = 0; i < quantidade_frutas; i++)
            {
                escreva(frutas[i], "\n")
            }

            escreva("\nDigite o nome de uma fruta para remover: ")
            leia(fruta_usuario)

            fruta_encontrada = falso
            para (inteiro i = 0; i < quantidade_frutas; i++)
            {
                se (frutas[i] == fruta_usuario)
                {
                    fruta_encontrada = verdadeiro

                    para (inteiro j = i; j < quantidade_frutas - 1; j++)
                    {
                        frutas[j] = frutas[j + 1]
                    }

                    quantidade_frutas = quantidade_frutas - 1
                    escreva("Fruta foi retirada da lista.\n\n")
                    pare
                }
            }

            se (fruta_encontrada == falso)
            {
                escreva("Fruta indisponível no nosso mercado.\n\n")
            }
        }

        escreva("Lista de compras finalizada.\n")
    }
}
