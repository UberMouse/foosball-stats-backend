RSpec.describe MatchPlayer do
  context "model shape" do
    it {is_expected.to validate_presence_of(:goals)}
    it do
      is_expected.to validate_numericality_of(:goals)
                      .is_greater_than_or_equal_to(0)
                      .is_less_than_or_equal_to(10)
    end

    it {is_expected.to define_enum_for(:position).with([:goalie, :striker])}
    it {is_expected.to define_enum_for(:team).with([:red, :white])}

    it {is_expected.to belong_to(:match)}
    it {is_expected.to belong_to(:player)}
  end
end
