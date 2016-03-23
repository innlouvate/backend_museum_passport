class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
