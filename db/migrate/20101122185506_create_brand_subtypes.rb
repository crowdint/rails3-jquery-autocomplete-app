class CreateBrandSubtypes < ActiveRecord::Migration
  def self.up
    change_table :brands do |t|
      t.string :type
    end
  end

  def self.down
    remove_column :users, :type
  end
end
