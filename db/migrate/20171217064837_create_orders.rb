class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :customer
      t.string :address
      t.string :phone
      t.integer :ribs
      t.integer :pork
      t.integer :brisket
      t.integer :chicken
      t.integer :fries
      t.integer :potato
      t.float :cost

      t.timestamps
    end
  end
end
