class Department < ActiveRecord::Base
  belongs_to :company
  belongs_to :department, foreign_key: :parent_id
  has_many :contacts
  validates_presence_of :name
end
