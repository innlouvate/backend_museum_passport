require 'rails_helper'

describe User::SessionsController do

  render_views

  it 'creates a new user' do
      expect{User.create(email: 'example@example.com', password: 'hello123')}.to change(User, :count)
  end

end
