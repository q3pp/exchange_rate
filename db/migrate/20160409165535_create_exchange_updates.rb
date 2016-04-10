class CreateExchangeUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :exchange_updates do |t|
      t.decimal :rate
      t.datetime :time
      t.boolean :enable, default: true
      t.timestamps
    end
  end
end
