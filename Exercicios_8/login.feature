            #language: pt

            Descrição:
            [US-0002] – Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Critérios de Aceitação:
            1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
            2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

            Cenário: Autenticar usuário e direcionar para checkout
            Dado que eu acesse a página de autenticação do portal EBAC
            Quando eu inserir os dados validos
            Entao sou direcionado para tela de checkout

            Cenário: Dados invalidos mensagem de erro
            Dado que eu acesse a página de autenticação do portal EBAC
            Quando eu digito os dados invalidos
            Entao deve ser exibido a mensagem "Usuário ou Senha Inválidos"


            Cenários usando contexto
            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticar usuário e direcionar para checkout
            Quando eu inserir os dados validos
            Entao sou direcionado para tela de checkout

            Cenário: Dados invalidos mensagem de erro
            Quando eu digito os dados invalidos
            Entao deve ser exibido a mensagem "Usuário ou Senha Inválidos"


            Cenários usando Esquema do Cenário
            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir uma <mensagem>

            Exemplos:
            | usuario                         | senha      | mensagem                                 |
            | "ericdouglasffaria@ebac.com.br" | "12345"    | "Olá Eric Douglas Seja Bem Vindo!"       |
            | "eduardonacimento@ebac.com.br"  | "54321"    | "Olá Eduardo Nasciemnto Seja Bem Vindo!" |
            | "pamelaadriane@ebac.com.br"     | "22221122" | "Olá Pamela Adriane Seja Bem Vindo!"     |