require 'test_helper'

class ScorecardTest < ActiveSupport::TestCase
  
  def setup
    @scorecard = Scorecard.new(player: "players")
  end
  
  test "scorecard should be valid" do
    assert @scorecard.valid?
  end
end
