require 'rails_helper'

RSpec.describe Question, type: :model do

  it {is_expected.to belong_to :exhibit}
  it {is_expected.to have_many :answers}

end
