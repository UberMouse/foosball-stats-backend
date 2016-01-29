FactoryGirl.define do
  factory :match_player do
    player_id 1
    match_id 1
    position :goalie
    team :red
    goals 0
  end
end
