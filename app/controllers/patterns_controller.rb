class PatternsController < ApplicationController
   before_action :authenticate_user!, except: [:show, :index]
   before_action :only_admin_user, except: [:show, :index]
   
   def new
      @pattern = Pattern.new 
   end
   
   def edit
      @pattern = Pattern.find(params[:id]) 
   end
   
   def create
      @pattern = Pattern.new( pattern_params )
      if @pattern.save
          flash[:success] = "Pattern Created"
          redirect_to patterns_path
      else
          flash[:error] = 'Pattern creation failed'
          render action: :new
      end
   end
   
   def show
      @pattern = Pattern.find(params[:id]) 
   end
   
   def update
        @pattern = Pattern.find(params[:id])
        if @pattern.update_attributes(pattern_params)
            flash[:success] = "Pattern updated"
            redirect_to pattern_path(id: params[:id])
        else
            flash[:error] = "Pattern update failed"
            render action: :show
        end
   end
   
   def destroy
      Pattern.find(params[:id]).destroy
      redirect_to patterns_path
   end
   
   def index
        @patterns = Pattern.all 
   end
   
   private
      def only_admin_user
           @user = current_user
           redirect_to(root_url) unless @user.admin
      end
      def pattern_params
        params.require(:pattern).permit(:name) 
      end
end