class ProductsController < ApplicationController
   before_action :authenticate_user!
   before_action :only_admin_user
   
   def new
      @product = Product.new
   end 
   
   def create
      @product = Product.new( product_params )
      if @product.save
         flash[:success] = "Product created"
         redirect_to products_path
      else
         flash[:notice] = "Product creation failed"
         redner action: :new
      end
   end
   
   def show
      @product = Product.find(params[:id])
   end
   
   def update
      @product = Product.find(params[:id])
      if @product.update_attributes( product_params )
         flash[:success] = "Product updated"
         redirect_to product_path(id: params[:id])
      else
         flash[:error] = "Product update failed"
         render action: :show
   end
   
   def destroy
      Product.find(params[:id]).destroy
      redirect_to products_path
   end
   
   def index
      @products = Product.all #Product.includes() TODO
   end
   
   private
       def only_admin_user
           @user = current_user
           redirect_to(root_url) unless @user.admin
       end
       
       def product_params
          params.require(:product).permit(:name, :price, :picture_url, :comments, :christmas, :clothing, :in_stock)
       end
end