class Exhibit < ActiveRecord::Base
  has_many :questions
  belongs_to :museum

end
