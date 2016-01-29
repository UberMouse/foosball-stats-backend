RSpec.describe Player, type: :model do
  context "model shape" do
    it {is_expected.to validate_presence_of(:name)}
    it {is_expected.to validate_presence_of(:avatar)}

    it {is_expected.to have_many(:matches)}
  end
end
