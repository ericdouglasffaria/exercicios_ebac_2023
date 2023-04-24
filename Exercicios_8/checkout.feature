#language: pt

[US-0003] – Tela de cadastro - Checkout

Descrição:
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Critérios de Aceitação:
1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

Cenário: Cadastrar todos os campos com asteriscos
Dado que eu estou na tela de Checkout do portal da EBAC
Quando eu cadastro todos dados obrigatorios com asteriscos
E clico no botão finalizar compra
Entao o sistema deve retornar uma mensagem "Compra Fizalizada com sucesso"

Cenário: Dados inválidos no campo e-mail
Dado que eu estou na tela de Checkout do portal da EBAC
Quando eu preenho campo e-mail com dados inválidos
E clico no botão finalizar compra
Entao o sistema deve retornar uma mensagem "e-mail invalido"

Cenário: alerta de mensagem compos vazios
Dado que eu estou na tela de Checkout do portal da EBAC
Quando não cadastro os campos obrigatorios com asteriscos.
E clico no botão finalizar compra
Entao o sistema deve retornar uma mensagem "Preencher os campos com asteriscos"


Cenários usando contexto
Contexto:
Dado que eu estou na tela de Checkout do portal da EBAC

Cenário: Cadastrar todos os campos com asteriscos
Quando eu cadastro todos dados obrigatorios com asteriscos
E clico no botão finalizar compra
Entao o sistema deve retornar uma mensagem "Compra Fizalizada com sucesso"

Cenário: Dados inválidos no campo e-mail
Quando eu preenho campo e-mail com dados inválidos
E clico no botão finalizar compra
Entao o sistema deve retornar uma mensagem "e-mail invalido"

Cenário: alerta de mensagem compos vazios
Quando não cadastro os campos obrigatorios com asteriscos.
E clico no botão finalizar compra
Entao o sistema deve retornar uma mensagem "Preencher os campos com asteriscos"