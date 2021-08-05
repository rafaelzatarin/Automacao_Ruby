# language: pt

Funcionalidade: Adicionar produto no carrinho no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Desejo pesquisar um produto 
  Após isso adicionar no carrinho de compras

  # Completar o cenário abaixo
  @add_prod_cart
  Cenário: Adicionar produto no carrinho
    Dado que esteja na página inicial
    E buscar pelo produto 'shirt'
    Quando clicar no botão para adicionar produto no carrinho
    E apresentar o modal do produto adicionado com sucesso
    E ao clicar no botão fazer checkout
    Então será direcionado ao resumo de carrinho de compras
