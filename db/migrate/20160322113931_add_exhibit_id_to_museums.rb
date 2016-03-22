class AddExhibitIdToMuseums < ActiveRecord::Migration
  def change
    add_reference :museums, :museum, index: true, foreign_key: true
  end
end
