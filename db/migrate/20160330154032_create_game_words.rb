class CreateGameWords < ActiveRecord::Migration
  def change
    create_table :game_words do |t|

      t.timestamps null: false
    end
  end
end
