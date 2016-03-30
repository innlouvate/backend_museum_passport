class AddImageToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :image, :text
  end
end
