class EventsController < ApplicationController
   def new
      @event = Event.new 
   end
   
   def create
      @event = Event.new( event_params )
      if @event.save
          flash[:success] = "Event created"
          redirect_to events_path
      else
          flash[:error] = "Event creation failed"
          render action: :new
      end
   end
   
   def show
        @event = Event.find(params[:id]) 
   end
   
   def destroy
        Event.find(params[:id]).destroy
        redirect_to events_path
   end
   
   def index
        @events = Event.all 
   end
   
   private
        def event_params
           params.require(:event).permit(:name, :startdate, :details) 
        end
end