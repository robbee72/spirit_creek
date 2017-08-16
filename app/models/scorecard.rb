class Scorecard < ActiveRecord::Base
  
  scope :sorted, lambda { order("position ASC")}
  
  has_and_belongs_to_many :courses
end