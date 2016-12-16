class AddChargerateToDrivers < ActiveRecord::Migration[5.0]
  def change
    add_column :drivers, :chargerate, :decimal
  end
end
