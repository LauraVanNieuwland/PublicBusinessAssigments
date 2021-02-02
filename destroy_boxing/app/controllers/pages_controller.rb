class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :contact, :products, :kladblok]

  def home
  end

  def about
  end

  def products
    @products = Product.all
  end

  def contact
  end

  def kladblok
  end


end
