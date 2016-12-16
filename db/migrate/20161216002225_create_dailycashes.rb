class CreateDailycashes < ActiveRecord::Migration[5.0]
  def change
    create_table :dailycashes do |t|
      t.datetime :date
      t.decimal :sales
      t.decimal :cashpaid
      t.decimal :onlinepaid
      t.decimal :driverpaid
      t.decimal :banklodge
      t.decimal :overunder

      t.timestamps
    end
  end
end
