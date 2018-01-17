class PagesController < ApplicationController

  def home
    @workers = Worker.all
    @worker = Worker.new
    @shifts = Shift.all
    @shift = Shift.new
  end
end
