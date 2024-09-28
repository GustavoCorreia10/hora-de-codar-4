programa
{
    real saldo = 2500.00
    cadeia nome
    inteiro senha = 1501

    funcao inicio() {

      escreva("> SEJA BEM VINDO AO BANCO CORREIA BANK <")
      escreva("\nInsira seu Nome: \n")
      leia(nome)
      escreva("Olá, ", nome, " é uma honra ter você por aqui! \n")
      
      inteiro opcao
         
      escreva("\nEscolha uma opção:\n")
      escreva("1. Ver saldo\n")
      escreva("2. Ver Extrato\n")
      escreva("3. Fazer saque\n")
      escreva("4. Fazer depósito\n")
      escreva("5. Fazer Transferência\n")
      escreva("6. Sair\n")
      leia(opcao)
      
      escreva("A opção selecionada foi: " +opcao + "\n")
      
      escolha(opcao){
        caso 1:
          verSaldo()

        caso 2:
          verExtrato()

        caso 3:
          fazerSaque()

        caso 4:
          fazerDeposito()

        caso 5: 
          fazerTransferencia()

        caso 6: 
          sair()
          
        caso contrario:
          erro()
      }
    }

    funcao verSaldo(){

      escreva("Para ter acesso a seu Saldo, Insira sua senha: ")
      leia(senha)

        se(senha == 1501){
        escreva("Seu saldo atual é: ", saldo, "\n")
        inicio()
        }
        senao {
          escreva("Dados incorreto! Tente novamente!\n")
           verSaldo()
        }
    }

    funcao verExtrato(){

      escreva("Para acessar seu extrato, Insira sua Senha: ")
      leia(senha)

      se(senha != 1501){
        escreva("Acesso autorizado")
        verExtrato()
      }senao{
        escreva("Mercadorias: R$ 500,00\nAluguel: R$ 650,00\nSalário: R$ 1.600,00\n")
        inicio()
      }
    }

    funcao fazerSaque(){
      
      real saque

      escreva("Para você poder sacar, Insira sua Senha: ")
      leia(senha)

      se(senha == 1501){
         escreva("Qual o valor para saque? ") 
         leia(saque)
      
      se (saque <= 0) {
            escreva("Por favor, informe um número válido.\n")
            fazerSaque()

      } senao se (saque > saldo){
        escreva("Operação não autorizada")
        
      } senao {
        saldo = saldo - saque
        verSaldo()
      } 
    } 
    senao{
         escreva("Dados incorreto! Tente novamente!\n")
           fazerSaque()
      }
    }

    funcao fazerDeposito() {

      real deposito

      escreva("Para depositar, Insira sua Senha: ")
      leia(senha)

      se(senha == 1501){
        escreva("Qual o valor para depósito? ")
        leia(deposito)
      

      se (deposito <= 0){
        escreva("Operação não autorizada!\nPor favor, informe um número válido.\n")
        fazerDeposito()
      } senao {
        saldo = saldo + deposito
        verSaldo()
      }
      }
      senao{
        escreva("Dados Incorretos! Tente novamente!")
        fazerDeposito()
      }
    }
    
    funcao fazerTransferencia(){

      real transferencia
      inteiro conta = 1234567

        escreva("Para fazer uma transferencia, Insira sua senha: ")
        leia(senha)

        se(senha == 1501){
          escreva("Insira o número da conta bancaria:")
          leia(conta)
        

      se(conta >= 1234567){
         escreva("Insira valor da transferencia: ") 
         leia(transferencia)
      
      se (transferencia <= 0) {
            escreva("Por favor, informe um número válido.\n")
            fazerTransferencia()

      } senao se (transferencia > saldo){
        escreva("Operação não autorizada")
        
      } senao {
        saldo = saldo - transferencia
        escreva("Novo saldo: ", saldo)
        inicio()
      } 
    } 
    senao{
         escreva("Dados incorreto! Tente novamente!\n")
           fazerTransferencia()
      }
    }
    senao{
        escreva("Operação invalida!")
        fazerTransferencia()
      }
    }

   funcao sair(){
      escreva("Obrigado por usufruir os serviços do banco: ", nome, " foi um prazer ter você por aqui! \n -Banco Correia Bank \n")

    }
    
    funcao erro() {
      escreva("opção inválida")
      inicio()
    }
}
