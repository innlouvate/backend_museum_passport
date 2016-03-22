class AddQuestionIdToExhibits < ActiveRecord::Migration
  def change
    add_reference :exhibits, :exhibit, index: true, foreign_key: true
  end
end
