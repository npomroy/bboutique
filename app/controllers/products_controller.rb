class ProductsController < ApplicationController
   def new
   
   end 
   
   def index
      @products = Product.all #Product.includes() TODO
   end
end