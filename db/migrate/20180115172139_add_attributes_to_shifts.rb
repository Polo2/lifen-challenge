require 'date'

class AddAttributesToShifts < ActiveRecord::Migration[5.0]
  def change
    add_column :shifts, :start_date, :date
    add_reference :shifts, :worker
  end
end
