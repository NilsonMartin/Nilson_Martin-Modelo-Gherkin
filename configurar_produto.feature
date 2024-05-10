#Autor:Nilson

  Funcionalidade: Tela de configuração

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho


            Contexto:
            Dado que eu selecione um produto do site EBAC-SHOP

            Esquema do Cenário: Configurar produto
            Quando eu selecionar <cor> <tamanho>
            E <quantidade>
            Então deve exibir <mensagem> carrinho

            | cor        | TAM   | Qtd | Mensagem                      |
            | "preto"    | "XL"  | "1" | "Alteração feita com sucesso" |
            | "branco"   | "M"   | "2" | "Alteração feita com sucesso" |
            | "vermelho" | "S"   | "3" | "Alteração feita com sucesso" |
            | "azul"     | "XXL" | "4" | "Alteração feita com sucesso" |

            Contexto:
            Dado que eu selecione um produto do site EBAC-SHOP

            Cenário: Quantidade inválida
            Quando eu selecionar a cor preta, tamanho M
            E a quantidade 11
            Então deve mostrar a mensagem de alerta "Quantidade inválida"

            Cenário: Redefinir configuração
            Quando eu selecionar a cor preta, tamanho M
            E clicar na opção limpar
            Então deve mostrar a mensagem "As alterações foram desfeitas"