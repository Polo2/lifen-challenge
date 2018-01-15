class AddAttributesToWorker < ActiveRecord::Migration[5.0]
  def change
    add_column :workers, :first_name, :string
    add_column :workers, :status, :string
  end
end
