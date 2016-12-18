class ShoppingCartItemsController < ApplicationController
    def create
       @shopping_cart_item = ShoppingCartItem.new(cart_item_params)
       @shopping_cart_item.product_id = params[:id]
       @shopping_cart_item.user_id = current_user.id
       # get cost
    #   @shopping_cart_item.cost = Product.find(params[:id]).price
       if @shopping_cart_item.save
           flash[:success] = "Item added to cart"
           redirect_to products_path
       else
           flash[:error] = "Couldn't add to cart"
           redirect_to root_path
       end
    end
    
    private
        def cart_item_params
           params.require(:shopping_cart_item).permit(:user_id, :product_id, :count, :cost) 
        end
end