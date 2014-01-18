class AddStateRefToItems < ActiveRecord::Migration
  def change
	add_reference :items, :state

    # add a foreign key
    execute <<-SQL
      ALTER TABLE items
        ADD CONSTRAINT fk_items_states
        FOREIGN KEY (state_id)
        REFERENCES states(id)
    SQL
  end
end
