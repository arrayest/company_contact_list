class Contact < ActiveRecord::Base
  belongs_to :company
  belongs_to :department
	has_many :phones
  validates_presence_of :name
end
