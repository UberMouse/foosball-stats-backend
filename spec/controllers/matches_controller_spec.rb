RSpec.describe MatchesController do
  describe "POST create" do
    let(:json) do
      {
        match: {
          date: Date.today,
          match_players_attributes: (1..4).map{attributes_for(:match_player)}
        }
      }
    end

    before {post :create, json}

    it "creates a new Match model" do
      expect(Match.count).to eq(1)
    end
  end
end
