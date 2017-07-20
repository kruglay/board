# == Schema Information
#
# Table name: advertisements
#
#  id                  :integer          not null, primary key
#  inactive            :boolean
#  user_id             :integer          not null
#  title               :string           not null
#  status              :integer          not null
#  product_type        :integer          not null
#  ad_type             :integer          not null
#  game_type           :integer
#  game_id             :integer          not null
#  sum                 :integer
#  text                :text             not null
#  services            :text
#  rating_to_employee  :integer
#  rating_to_user      :integer
#  mention_to_employee :text
#  mention_to_user     :text
#  employee_id         :integer
#  finished_at         :datetime
#  response_count      :integer
#  watches_count       :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_advertisements_on_employee_id  (employee_id)
#  index_advertisements_on_game_id      (game_id)
#  index_advertisements_on_user_id      (user_id)
#

class Advertisement < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :employee, class_name: 'User', optional: true

  # validate
  validates :user, :title, :status, :product_type, :ad_type,
            :game, :text, presence: :true
  validates :title, length: { maximum: 300 }

  # enums
  enum status:        [:new, :work, :complete, :closed, :canseled],
       product_type:  [:service, :product],
       ad_type:       [:buy, :sell, :do_service, :need_service],
       game_type:     [:strategy, :action, :simulator]

end
