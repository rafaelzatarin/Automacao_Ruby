require_relative 'sections/cart.rb'

module Pages
  class CarrinhoPage < SitePrism::Page
    set_url '/index.php'

    element  :breadcrumb, '.navigation_page'
    element  :btn_add_to_cart, '.ajax_add_to_cart_button'
    element  :title, '#layer_cart > div.clearfix > div.layer_cart_product > h2'
    element  :btn_checkout, '#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a'
    element  :qtd_contains_cart, '#summary_products_quantity'

    sections :carts, Sections::Cart, '.clearfix'

  end
end
