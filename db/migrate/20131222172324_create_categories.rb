class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, :null => false
      t.integer :parent_id
      t.integer :state_id
      t.string :active, :limit => 1, :null => false

      t.timestamps
    end
  end
end
