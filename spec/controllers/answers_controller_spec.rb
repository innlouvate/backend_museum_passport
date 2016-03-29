ENV['RACK_ENV'] = 'test'

require 'rails_helper'

RSpec.describe AnswersController, type: :controller do

  render_views

  before :each do
    test_museum = Museum.create(name: "Sample Museum", id: 1)
    Exhibit.create(name: "Sample Exhibit", id: 1, museum_id: 1)
    Question.create(description: "Sample Question", id: 1, exhibit_id: 1)
    @user = User.create(email: 'test@email.com', password: 'test1234', password_confirmation: 'test1234')
    current_user = @user
  end

  it 'creates the answer in the database with the appropriate question id' do
    expect do
      post :create, {entry: "answer one", museum_id: 1, exhibit_id: 1, question_id: 1, user_id:1, format: 'json'}
    end.to change(Answer, :count).by(1)
  end

  it 'updates the answer in the database' do
    expect do
      put :update, {entry: "new answer", museum_id: 1, exhibit_id: 1, question_id: 1, user_id:1, format: 'json'}
    end.to_not change(Answer, :count)
  end

end
