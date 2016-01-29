RSpec.describe Match do
  context "model shape" do
    it {is_expected.to have_many(:players)}
    it {is_expected.to accept_nested_attributes_for(:match_players)}

    it {is_expected.to validate_presence_of(:date)}

    context "number of match_players" do
      it "is not valid with less than 4 match_players" do
        match = build(:match, number_of_match_players: 3)

        expect(match).to be_invalid
        expect(match.errors).to have_key(:match_players)
      end

      it "is not valid with greater than 4 match_players" do
        match = build(:match, number_of_match_players: 5)

        expect(match).to be_invalid
        expect(match.errors).to have_key(:match_players)
      end

      it "is not valid if a match_player is marked_for_destruction" do
        match = build(:match, number_of_match_players: 4)
        match.match_players.first.mark_for_destruction

        expect(match).to be_invalid
        expect(match.errors).to have_key(:match_players)
      end

      it "is valid with exactly 4 match_players" do
        match = build(:match, number_of_match_players: 4)

        expect(match).to be_valid
      end
    end
  end
end
