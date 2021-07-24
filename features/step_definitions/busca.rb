Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end

Então("deve ser retornada mensagem de produto não encontrado") do
  puts @search_page.warnings.first.msg.text
  expect(@search_page.warnings.first.msg.text).to have_content 'No results were found for your search'
end