Quando("clicar no botão para adicionar produto no carrinho") do
  expect(@carrinho_page.breadcrumb.text).to include 'Search'
  @carrinho_page.btn_add_to_cart.click
end

Quando("apresentar o modal do produto adicionado com sucesso") do
  puts @carrinho_page.title.text
  expect(@carrinho_page.title.text).to have_content 'Product successfully added'
end

Quando("ao clicar no botão fazer checkout") do
  @carrinho_page.btn_checkout.click
end

Então("será direcionado ao resumo de carrinho de compras") do
  expect(@carrinho_page.breadcrumb.text).to include 'Your shopping cart'
  expect(@carrinho_page.qtd_contains_cart.text).to include '1 Product'
end