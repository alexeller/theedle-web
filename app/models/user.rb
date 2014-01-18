class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :validatable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable
#  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  DeviseController.class_eval do
    def resource_params
      unless params[resource_name].blank?
        params.require(resource_name).permit(:name, :email, :password, :password_confirmation, :remember_me)
      end
    end
  end
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false
end
