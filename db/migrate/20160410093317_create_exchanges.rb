class CreateExchanges < ActiveRecord::Migration[5.0]
  def change
    create_table :exchanges do |t|
      t.decimal :rate

      t.timestamps
    end
  end
end
