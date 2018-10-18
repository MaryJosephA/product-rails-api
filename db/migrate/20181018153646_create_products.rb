class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :prod_name
      t.integer :quantity

      t.timestamps
    end
  end
end
