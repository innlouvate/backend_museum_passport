class AddQuestionIdToExhibits < ActiveRecord::Migration
  def change
    add_reference :questions, :exhibit, index: true, foreign_key: true
  end
end
