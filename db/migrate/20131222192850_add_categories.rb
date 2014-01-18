class AddCategories < ActiveRecord::Migration
  def change
	Category.create(:name => 'Collectibles', :state_id => '1', :active => 'Y') 
	Category.create(:name => 'Electronics', :state_id => '1', :active => 'Y') 
	Category.create(:name => 'Household', :state_id => '1', :active => 'Y') 
	Category.create(:name => 'Miscellaneous', :state_id => '1', :active => 'Y') 
	Category.create(:name => 'Services', :state_id => '1', :active => 'Y') 
	Category.create(:name => 'Vehicles', :state_id => '1', :active => 'Y') 
  end
end
