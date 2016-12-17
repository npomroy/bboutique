class EventsController < ApplicationController
   def new
      @event = Event.new 
   end
   
   def create
      @event = Event.new( event_params )
      if @event.save
          flash[:success] = "Event created"
          redirect_to root_path
      else
          flash[:error] = "Event creation failed"
          render action: :new
      end
   end
   
   private
        def event_params
           params.require(:event).permit(:name, :startdate, :details) 
        end
end