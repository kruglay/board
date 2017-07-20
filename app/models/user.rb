# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string           default(""), not null
#  login                  :string           default(""), not null
#  day_in_service         :integer
#  contacts               :string
#  personal_info          :string
#  rate_employer          :integer
#  rate_contractor        :integer
#  user_type              :integer          not null
#  inactive               :boolean
#  locked_to_date         :date
#  blocked                :boolean
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  role                   :integer
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_login                 (login) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  has_many :advertisements

  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # validations
  validates :email, :login, uniqueness: { case_sensitive: false }
  validates :email, :login, :name, presence: true
  validates :email, :login, :name, length: { maximum: 100}

  # enums
  enum user_type: [:employer, :contractor],
       role:      [:user, :moderator, :admin]

  # personal_info: { date_of_birth:, sex: , city: }
  serialize :personal_info, Hash
  # contacts: {telephone:""}
  serialize :contacts, Hash

  attr_accessor :f_name, :s_name, :m_name

end
