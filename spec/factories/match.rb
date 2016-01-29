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
        match.match_players = create_list(:match_player, evaluator.number_of_match_players)
      end

      match.save
    end
  end
end
