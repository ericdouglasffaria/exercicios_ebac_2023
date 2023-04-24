/// <reference types="cypress"/>

context('Funcionalidade Processo Completo de Compra', () => {
  beforeEach(() => {
    cy.visit('minha-conta');
  });

  var quantidade = 5;

  it('Deve fazer login com sucesso.', () => {
    cy.get('#username').type('ebacteste@gmail.com');
    cy.get('#password').type('!@alunoteste01!@');
    cy.get('.woocommerce-form > .button').click();
    cy.get('.woocommerce-MyAccount-content > :nth-child(2)').should(
      'contain',
      'ebacteste '
    );
  });

  it('Deve Add Produto no Carrinho e finalizar compra', () => {
    cy.get('#primary-menu > .menu-item-629 > a').click();
    cy.get(
      '.post-2559 > .product-block > .block-inner > .image > .product-image > .image-hover'
    ).click();
    cy.get('.button-variable-item-M').click();
    cy.get('.button-variable-item-Green').click();
    cy.get('.input-text').clear().type(quantidade);
    cy.get('.single_add_to_cart_button').click();

    cy.get('.dropdown-toggle > .mini-cart-items').should('contain', quantidade);
    cy.get('.woocommerce-message').should(
      'contain',
      quantidade + ' × “Abominable Hoodie” foram adicionados no seu carrinho.'
    );
    cy.get('.woocommerce-message > .button').click();

    cy.get('.checkout-button').click();
    cy.get('.showlogin').click();

    cy.get('#username').type('alunoebacteste@ebac.com');
    cy.get('#password').type('!@alunoteste01!@');
    cy.get('.woocommerce-button').click();
    cy.get('.woocommerce-info').should(
      'contain',
      'Você tem um cupom de desconto? Clique aqui e informe o código do seu cupom de desconto'
    );
    cy.get('#billing_company').clear().type('Ebac.com');
    cy.get('#billing_address_1').clear().type('Rua 3');
    cy.get('#billing_address_2').clear().type('Sala 5');
    cy.get('#billing_city').clear().type('São Paulo');
    cy.get('#billing_postcode').clear().type('07100-000');
    cy.get('#billing_phone').clear().type('119999-9999');
    cy.get('#order_comments').clear().type('Teste de Compra');

    cy.get('#terms').click();
    cy.get('#place_order').click();
    cy.get('.woocommerce-notice').should(
      'contain',
      'Obrigado. Seu pedido foi recebido.'
    );
  });
});
