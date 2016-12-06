class ProductsController < ApplicationController
   before_action :authenticate_user!
   before_action :only_admin_user
   
   def new
      @product = Product.new
   end 
   
   def index
      @products = Product.all #Product.includes() TODO
   end
   
   def show
      
   end
   
   private
       def only_admin_user
           @user = current_user
           redirect_to(root_url) unless @user.admin
       end
end