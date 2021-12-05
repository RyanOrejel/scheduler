class TasksController < ApplicationController
  def create
   @calendar = Calendar.find(params[:calendar_id])
   @task = @calendar.tasks.create(task_params)
   redirect_to calendar_path(@calendar)
 end

 def destroy
    @calendar = Calendar.find(params[:calendar_id])
    @task = @calendar.tasks.find(params[:id])
    @task.destroy
    redirect_to calendar_path(@calendar)
  end

 private
   def task_params
     params.require(:task).permit(:name, :description, :due_date, :category)
   end
end
