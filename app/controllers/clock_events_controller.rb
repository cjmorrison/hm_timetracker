class ClockEventsController < ApplicationController

    def punchEvent

    end

    def log_punch_event

        @clockEvent = ClockEvent.new(cEvent_params) 
        if @clockEvent.save 
          redirect_to '/login' 
        end 
    end


    private 
    def cEvent_params 
        params.require(:message).permit(:content) 
    end


end
