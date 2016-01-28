RSpec.describe MatchPlayer do
  context "validations" do
    it {is_expected.to validate_presence_of(:match_id)}
    it {is_expected.to validate_presence_of(:player_id)}
    it {is_expected.to validate_presence_of(:goals)}
  end
end
