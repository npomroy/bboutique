class PatternsController < ApplicationController
   def new
      @pattern = Pattern.new 
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
   
   def destroy
      Pattern.find(params[:id]).destroy
      redirect_to patterns_path
   end
   
   def index
        @patterns = Pattern.all 
   end
   
   private
        def pattern_params
           params.require(:pattern).permit(:name) 
        end
end