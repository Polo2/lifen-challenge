
class ShiftsController < ApplicationController
  def show
  end

  def create
    @shift = Shift.new(params_require)
    @shift.worker = Worker.find(params_require["worker_id"].to_i)

    if @shift.save
      redirect_to root_path
    end
  end

  private

  def params_require
    params.require(:shift).permit(:start_date, :worker_id)
  end
end
