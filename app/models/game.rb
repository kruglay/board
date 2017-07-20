# == Schema Information
#
# Table name: games
#
#  id        :integer          not null, primary key
#  inactive  :boolean
#  name      :string           not null
#  game_type :integer
#
# Indexes
#
#  index_games_on_name  (name)
#

class Game < ApplicationRecord
end
