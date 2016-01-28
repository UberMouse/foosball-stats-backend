RSpec.describe Player, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:avatar)}
  end
end
