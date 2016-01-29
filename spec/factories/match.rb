FactoryGirl.define do
  factory :match do
    date Date.today

    transient do
      match_players nil
      number_of_match_players 4
    end

    after(:build) do |match, evaluator|
      if evaluator.match_players.present?
        evaluator.match_players.each{|x| match.match_players << x}
      else
        match.match_players_attributes = evaluator.number_of_match_players.times.map{attributes_for(:match_player, match: match)}
      end

      match.save
    end
  end
end
