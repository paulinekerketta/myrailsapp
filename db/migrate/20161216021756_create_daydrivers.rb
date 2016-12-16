class CreateDaydrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :daydrivers do |t|
      t.string :name
      t.string :phone
      t.integer :noofdelivery
      t.decimal :chargerate
      t.decimal :extrapay
      t.decimal :dirvertotal

      t.timestamps
    end
  end
end
