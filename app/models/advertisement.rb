class Advertisement < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :employee, class_name: 'User'

end
