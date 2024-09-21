/* Crie uma array de planetas que inclua "Terra", "Marte", "Plutão", "Vênus", "Júpiter", "Saturno"  e, em seguida, peça ao usuário para digitar o nome de um planeta. 
Verifique se o planeta que o usuário informou está na array e informe ao usuário. */

programa
{
    funcao inicio()
    {
        cadeia planetas[6] = {"Terra", "Marte", "Plutão", "Vênus", "Júpiter", "Saturno"}
        cadeia planeta_usuario
        logico planeta_encontrado = falso

        escreva("Digite o nome de um planeta: ")
        leia(planeta_usuario)

        para (inteiro i = 0; i < 6; i++)
        {
            se (planetas[i] == planeta_usuario)
            {
                planeta_encontrado = verdadeiro
                pare
            }
        }

        se (planeta_encontrado == verdadeiro)
        {
            escreva("O planeta ", planeta_usuario, " está na lista.\n")
        }
        senao
        {
            escreva("O planeta ", planeta_usuario, " não está na lista.\n")
        }
    }
}
