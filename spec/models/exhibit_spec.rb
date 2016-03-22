require 'rails_helper'

RSpec.describe Exhibit, type: :model do

  it {is_expected.to belong_to :museum}
  it {is_expected.to have_many :questions}
  
end
