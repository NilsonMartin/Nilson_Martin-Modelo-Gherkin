            #Autor:Nilson

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro no checkout do site EBAC-SHOP

            Cenário: Cadastro com dados válidos
            Quando eu preencher todos os campos com dados válidos 
            E eu clicar em FINALIZAR compra
            Então deve exibir a mensagem de sucesso "Compra finalizada com sucesso!"

            Cenário: Cadastro com dados e-mail inválido
            Quando eu informar os dados com o e-mail inválido "Nilson.teste.com.Mz"
            E eu clicar em FINALIZAR compra
            Então deve exibir a mensagem de alerta "E-mail no formato inválido"

            Cenário: Cadastro com campo Cidade vazio
            Quando eu digitar os dados com a cidade vazio
            E eu clicar em FINALIZAR compra
            Então deve exibir a mensagem de alerta "Campo cidade não informado"

            Esquema do Cenário: Cadastrar múltiplos usuários
            Quando eu digitar o <nome>
            E eu digitar o <sobrenome>
            E eu selecionar o <pais>
            E eu digitar o <endereco>
            E eu digitar a <cidade>
            E eu digitar o <telefone>
            E eu digitar o <e-mail>
            E eu clicar em FINALIZAR COMPRA
            Então deve exibir a <mensagem de sucesso>

            Exemplos:
            | nome        | sobrenome   | pais         | endereco            | cidade     | telefone       | e-mail                | mensagem de sucesso              |
            | "Nilson"    | "da Cruz"   | "Mocambique" | "Av.Angola, 123"    | "Maputo"   | "+25887875907" | "NIlson@teste.com.Mz" | "Compra finalizada com sucesso!" |
            | "Remane"    | "Abdul"     | "Mocambique" | "Av.Angola, 123"    | "Maputo"   | "+25887875909" | "Remane@teste.com.Mz" | "Compra finalizada com sucesso!" |
            | "Gerson"    | "Ussen      | "Mocambique" | "Av.Angola, 123"    | "Maputo"   | "+25887875900" | "Gerson@teste.com.Mz" | "Compra finalizada com sucesso!" |
            | "Sultan"    | "Khan"      | "Mocambique" | "Av.Angola, 123"    | "Maputo"   | "+25887875902" | "Sultan@teste.com.Mz" | "Compra finalizada com sucesso!" |
            | "Huzeif"    | "Huzeif"    | "Mocambique" | "Av.Angola, 123"    | "Maputo"   | "+25887875902" | "Huzeif@teste.com.Mz" | "Compra finalizada com sucesso!" |
