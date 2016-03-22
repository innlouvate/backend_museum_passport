require 'rails_helper'

RSpec.describe Museum, type: :model do

    it {is_expected.to have_many :exhibits}
end
