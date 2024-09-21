/* Crie um programa onde o usuário possa cadastrar estudantes sem limites,
e em seguida, Se o usuário digitar "PARE" o programa deve exibir a quantidade de estudantes cadastrados e a lista com cada um deles. */

programa
{
    funcao inicio()
    {
        cadeia nome
        inteiro contador = 0
        cadeia lista_estudantes[1000]

        enquanto (verdadeiro)
        {
            escreva("Digite o nome do estudante (ou PARE para encerrar): ")
            leia(nome)
            
            se (nome == "PARE")
            {
                pare
            }
            
            lista_estudantes[contador] = nome
            contador = contador + 1
        }
        
        escreva("\nQuantidade de estudantes cadastrados: ", contador, "\n")
        
        escreva("Lista de estudantes:\n")
        para (inteiro i = 0; i < contador; i++)
        {
            escreva("Estudante ", (i + 1), ": ", lista_estudantes[i], "\n")
        }
    }
}
