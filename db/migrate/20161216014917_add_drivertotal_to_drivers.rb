class AddDrivertotalToDrivers < ActiveRecord::Migration[5.0]
  def change
    add_column :drivers, :drivertotal, :decimal
  end
end
