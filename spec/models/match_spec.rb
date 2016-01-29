RSpec.describe Match do
  context "model shape" do
    it {is_expected.to have_many(:players)}
    it {is_expected.to accept_nested_attributes_for(:match_players)}
  end
end
