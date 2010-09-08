class WelcomeController < ApplicationController
  autocomplete :brand, :name

  def show
    @product = Product.new
  end
end
