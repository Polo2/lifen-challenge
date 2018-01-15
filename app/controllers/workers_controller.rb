class WorkersController < ApplicationController

  def new
  end

  def create
    @worker = Worker.new(params.require(:worker).permit(:first_name, :status))
    if @worker.save
      redirect_to root_path
    else
      render :root
    end
  end


end
