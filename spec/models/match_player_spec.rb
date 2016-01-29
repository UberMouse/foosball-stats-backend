RSpec.describe MatchPlayer do
  context "validations" do
    it {is_expected.to validate_presence_of(:match_id)}
    it {is_expected.to validate_presence_of(:player_id)}
    it {is_expected.to validate_presence_of(:goals)}
    it do
      is_expected.to validate_numericality_of(:goals)
                      .is_greater_than_or_equal_to(0)
                      .is_less_than_or_equal_to(10)
    end
    it do
      is_expected.to validate_numericality_of(:position)
                      .is_greater_than_or_equal_to(MatchPlayer::GOALIE)
                      .is_less_than_or_equal_to(MatchPlayer::STRIKER)
    end
    it do
      is_expected.to validate_numericality_of(:team)
                      .is_greater_than_or_equal_to(MatchPlayer::RED_TEAM)
                      .is_less_than_or_equal_to(MatchPlayer::WHITE_TEAM)
    end
  end
end
