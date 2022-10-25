class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
    t.string :name
    t.boolean :isInCart
    t.integer :category_id
    end
  end
end
