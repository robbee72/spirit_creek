class Scorecard < ActiveRecord::Base
  validates :player, presence: true
  scope :sorted, lambda { order("position ASC")}
  
  has_many :courses
  has_many :players
end