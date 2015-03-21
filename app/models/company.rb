class Company < ActiveRecord::Base
  has_many :departments
  has_many :contacts
  validates_presence_of :name
end
