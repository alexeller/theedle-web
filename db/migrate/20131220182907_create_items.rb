class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title, :null => false
      t.string :description, :null => false
      t.decimal :price, :precision => 8, :scale => 2, :null => false
      t.string :city, :null => false
      t.integer :zipcode, :null => false
      t.integer :user_id, :null => false
      t.string :active, :limit => 1, :null =>false
      t.decimal :finders_fee, :precision => 8, :scale => 2, :null => false
      t.string :received_finders_fee, :limit => 1, :null => false
      t.string :image_path
      t.timestamps
    end
  end
end
