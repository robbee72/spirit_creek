class Player < ApplicationRecord
  
  has_many :courses
  has_many :scorecards
end
