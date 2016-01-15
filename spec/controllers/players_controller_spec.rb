RSpec.describe PlayersController do
  describe "POST create" do
    let(:json) do
      {
        player: {
          name: 'Taylor',
          avatar: 'http://avatar.io/avatar.png'
        }
      }
    end
    before {post :create, json}

    it "creates a new Player model" do
      expect(Player.count).to eq(1)
    end

    it "sets the attributes correctly" do
      player = Player.first

      expect(player.name).to eq('Taylor')
      expect(player.avatar).to eq('http://avatar.io/avatar.png')
    end
  end
end
