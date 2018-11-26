# frozen_string_literal: true

class Video < ApplicationRecord
  has_many :workouts
  has_many :users, through: :workouts
end
