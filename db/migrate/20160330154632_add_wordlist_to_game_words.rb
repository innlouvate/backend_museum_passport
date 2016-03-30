class AddWordlistToGameWords < ActiveRecord::Migration
  def change
    add_column :game_words, :wordlist, :string
  end
end
