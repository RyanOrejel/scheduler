class NotesController < ApplicationController
  def create
   @calendar = Calendar.find(params[:calendar_id])
   @note = @calendar.notes.create(note_params)
   redirect_to calendar_path(@calendar)
 end

 def destroy
    @calendar = Calendar.find(params[:calendar_id])
    @note = @calendar.notes.find(params[:id])
    @note.destroy
    redirect_to calendar_path(@calendar)
  end

 private
   def note_params
     params.require(:note).permit(:description)
   end
end
