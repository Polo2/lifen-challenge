
class ShiftsController < ApplicationController
  def show
  end

  def create
    @shift = Shift.new(shift_params)

    if @shift.save
      redirect_to root_path
    end
  end

  private

  def shift_params
    params.require(:shift).permit(:start_date, :worker_id)
  end
end
