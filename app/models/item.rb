class Item < ActiveRecord::Base

has_one :category
has_one :state

validates_presence_of :title
validates_presence_of :description
validates_presence_of :city

validates_presence_of :category_id
validates_presence_of :state_id
validates_presence_of :zipcode
validates_presence_of :user_id

validates_presence_of :price
validates_presence_of :finders_fee

validates_length_of :title, :maximum =>255
validates_length_of :description, :maximum =>255
validates_length_of :city, :maximum =>50

validates_format_of :zipcode, :with => /(^\d{5}$)/, :message => 'is an invalid zip code, and should be five digits long'
#validates_format_of :zipcode, :with => %r{\d{5}(-\d{4})?}, :message => "should be 12345 or 12345-1234"

validates_numericality_of :category_id, :only_integer => true
validates_numericality_of :state_id, :only_integer => true
validates_numericality_of :zipcode, :only_integer => true
validates_numericality_of :user_id, :only_integer => true
validates_numericality_of :price, :only_integer => false

end
