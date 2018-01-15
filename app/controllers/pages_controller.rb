class PagesController < ApplicationController

  def home
    @workers = Worker.all
    @worker = Worker.new
  end

  def about
  end
end
