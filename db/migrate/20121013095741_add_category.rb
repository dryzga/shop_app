class AddCategory < ActiveRecord::Migration
  def up
  	create_table :categories do |t|
      t.string :name
      t.timestamps
    end
    change_table :products do |t|
      t.integer :category_id
    end
    Product.all.each do |product|
      product.update_attributes!(:category_id => 1)
    end
  end

  def down
  	drop_table :categories
  	remove_column :products, :category_id
  end
end
