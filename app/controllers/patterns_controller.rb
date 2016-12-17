class PatternsController < ApplicationController
   def new
      @pattern = Pattern.new 
   end
   
   def create
      @pattern = Pattern.new( pattern_params )
      if @pattern.save
          flash[:success] = "Pattern Created"
          redirect_to root_path
      else
          flash[:error] = 'Pattern creation failed'
          render action: :new
      end
   end
   
   private
        def pattern_params
           params.require(:pattern).permit(:name) 
        end
end