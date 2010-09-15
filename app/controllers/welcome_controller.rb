class WelcomeController < ApplicationController
  autocomplete :brand, :name

  def show
    @product = Product.new
  end

  def id_element_example
    @product = Product.new
  end
end
