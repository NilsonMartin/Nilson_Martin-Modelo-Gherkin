           #Autor:Nilson

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login do site EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuario "NilsonMartin"
            E a senha "teste@1234"
            Então deve direcionar o cliente à tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "NilsonMartin123"
            E a senha "teste@1234"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "NilsonMartin"
            E a senha "teste@12345"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> na Tela de checkout

            Exemplos:
            | usuario              | senha        | mensagem               |
            | "NilsonMartin "      | "teste@1234" | "Finalize sua compra!" |
            | "DuilioAmaral"       | "abc@1243"   | "Finalize sua compra!" |
            | "RemaneAbdul"        | "1234@abc"   | "Finalize sua compra!" |
            | "Huzeif"             | "teste@abc"  | "Finalize sua compra!" |
            | "Sultan"             | "Eu@1234"    | "Finalize sua compra!" |