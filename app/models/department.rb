class Department < ActiveRecord::Base
  belongs_to :company
  belongs_to :department, foreign_key: :parent_id
end
