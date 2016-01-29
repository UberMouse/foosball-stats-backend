RSpec.describe MatchPlayer do
  context "model shape" do
    it {is_expected.to validate_presence_of(:match_id)}
    it {is_expected.to validate_presence_of(:player_id)}
    it {is_expected.to validate_presence_of(:goals)}
    it do
      is_expected.to validate_numericality_of(:goals)
                      .is_greater_than_or_equal_to(0)
                      .is_less_than_or_equal_to(10)
    end

    it {is_expected.to define_enum_for(:position).with([:goalie, :striker])}
    it {is_expected.to define_enum_for(:team).with([:red, :white])}
  end
end
