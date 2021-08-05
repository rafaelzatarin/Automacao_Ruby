module Sections
  class Cart < SitePrism::Section

    element  :image, '.img-responsive'
    element  :price, '#layer_cart_product_price'

  end
end
