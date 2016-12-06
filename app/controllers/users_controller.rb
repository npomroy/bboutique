class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :only_admin_user
    
    
   def show
       @user = User.find( current_user.id)
   end
   
   private
       def only_admin_user
           @user = current_user
           redirect_to(root_url) unless @user.admin
       end
end