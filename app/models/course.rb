class Course < ActiveRecord::Base
  
  has_many :scorecards
  has_many :players
end