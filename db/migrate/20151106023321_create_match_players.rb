class CreateMatchPlayers < ActiveRecord::Migration
  def change
    create_table :match_players do |t|
      t.belongs_to :match
      t.belongs_to :player
      t.integer :position
      t.integer :goals
      t.integer :team

      t.timestamps null: false
    end
  end
end
