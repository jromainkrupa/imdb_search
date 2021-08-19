class Director < ApplicationRecord
  has_many :movies, dependent: :destroy
  include PgSearch::Model
  multisearchable against: [:first_name, :last_name]
end
