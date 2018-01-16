class PagesController < ApplicationController

  def home
    @workers_names = {}
    @workers = Worker.all

    @workers.each { |w| @workers_names["#{w.first_name} (#{w.status})"] = w.id }

    @worker = Worker.new
    @shifts = Shift.all
    @shift = Shift.new
  end

  def about

  end

  private

  def workers_names()
  end

end
