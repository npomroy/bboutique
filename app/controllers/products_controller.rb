class ProductsController < ApplicationController
   def new
      @product = Product.new
   end 
   
   def index
      @products = Product.all #Product.includes() TODO
   end
   
   def show
      
   end
end