#language: pt

[US-0001] – Configurar produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Critérios de Aceitação:
1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
2 – Deve permitir apenas 10 produtos por venda
3 – Quando eu clicar no botão “limpar” deve voltar ao estado original

Cenário: Configurar e adicionar produto paara compra
Dado que eu acesse a página de um produto do portal EBAC
Quando eu seleciono a cor, tamanho
E digito a quantidade "10"
Entao adiciono meu produto no carrinho

Cenário: Inserir quantidade invalida no carrinho
Dado que eu acesse a página de um produto do portal EBAC
Quando eu seleciono a cor e tamanho
E digito a quantidade "11"
Entao adiciono meu produto no carrinho
E o sistema envia uma mensagem de alerta "Permitido apenas 10 produto por compra"

Cenário: Resetar as configurações de compra
Dado que eu acesse a página de um produto do portal EBAC
Quando eu configuro todo meu produto para compra
E clico no botão limpar
Entao reseta a configuração para estado original


Cenários usando contexto
Contexto:
Dado que eu acesse a página de um produto do portal EBAC

Cenário: Configurar e adicionar produto paara compra
Quando eu seleciono a cor, tamanho
E digito a quantidade "10"
Entao adiciono meu produto no carrinho

Cenário: Inserir quantidade invalida no carrinho
Quando eu seleciono a cor e tamanho
E digito a quantidade "11"
Entao adiciono meu produto no carrinho
E o sistema envia uma mensagem de alerta "Permitido apenas 10 produto por compra"

Cenário: Resetar as configurações de compra
Quando eu configuro todo meu produto para compra
E clico no botão limpar
Entao reseta a configuração para estado original