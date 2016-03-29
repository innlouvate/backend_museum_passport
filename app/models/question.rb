class Question < ActiveRecord::Base
  belongs_to :exhibit
  has_many :answers

end
