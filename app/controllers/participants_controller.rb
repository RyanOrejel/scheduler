class ParticipantsController < ApplicationController
  def create
   @calendar = Calendar.find(params[:calendar_id])
   @participant = @calendar.participants.create(participant_params)
   redirect_to calendar_path(@calendar)
 end

 def destroy
    @calendar = Calendar.find(params[:calendar_id])
    @participant = @calendar.participants.find(params[:id])
    @participant.destroy
    redirect_to calendar_path(@calendar)
  end

 private
   def participant_params
     params.require(:participant).permit(:name)
   end
end
