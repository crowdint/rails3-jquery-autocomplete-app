class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products, :force => true do |t|
      t.string :brand_name
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
