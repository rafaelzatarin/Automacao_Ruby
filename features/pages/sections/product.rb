module Sections
  class Product < SitePrism::Section
    element  :image, '.img-responsive'
    element  :name, '.product-name'
    element  :price, '.content_price'
  end
  class Warning < SitePrism::Section
    element  :msg, '.alert-warning'
  end
end
