class AddCategoryRefToItems < ActiveRecord::Migration
  def change
	add_reference :items, :category

    # add a foreign key
    execute <<-SQL
      ALTER TABLE items
        ADD CONSTRAINT fk_items_categories
        FOREIGN KEY (category_id)
        REFERENCES categories(id)
    SQL
  end
end
