class EventsController < ApplicationController
    before_action :authenticate_user!, except: [:show, :index]
    before_action :only_admin_user, except: [:show, :index]
   
   def new
      @event = Event.new 
   end
   
   def edit
        @event = Event.find(params[:id]) 
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
   
   def update
        @event = Event.find(params[:id])
        if @event.update_attributes( event_params )
            flash[:success] = "Event updated"
            redirect_to event_path(id: params[:id])
        else
            flash[:error] = "Event update failed"
            render action: :show
        end
   end
   
   def destroy
        Event.find(params[:id]).destroy
        redirect_to events_path
   end
   
   def index
        @events = Event.all 
   end
   
   private
        def only_admin_user
           @user = current_user
           redirect_to(root_url) unless @user.admin
        end
        def event_params
           params.require(:event).permit(:name, :startdate, :details) 
        end
end