class AddExhibitIdToMuseums < ActiveRecord::Migration
  def change
    add_reference :exhibits, :museum, index: true, foreign_key: true
  end
end
