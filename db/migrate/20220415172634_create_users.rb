class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.bigint :phone, limit: 10
      t.bigint :adhar_number, limit: 16

      t.timestamps
    end
  end
end
