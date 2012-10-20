class CreateCart < ActiveRecord::Migration
  def up
  	create_table :buyers do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
    create_table :orders do |t|
    	t.integer :buyer_id
    	t.boolean :confirmed
    	t.timestamps
    end
    create_table :order_items do |t|
    	t.integer :order_id
    	t.integer :product_id
    	t.integer :quantity
    	t.timestamps
    end
  end

  def down
  	drop_table :buyers
  	drop_table :orders
  	drop_table :order_items
  end
end
