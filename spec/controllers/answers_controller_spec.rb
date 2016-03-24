ENV['RACK_ENV'] = 'test'

require 'rails_helper'

RSpec.describe AnswersController, type: :controller do

  render_views

  before do
    test_museum = Museum.create(name: "Sample Museum")
    Exhibit.create(name: "Sample Exhibit", museum_id: 1)
    Question.create(description: "Sample Question", exhibit_id: 1)
  end

  it 'creates the answer in the database with the appropriate question id' do
    expect do
      post :create, {museum_id: 1, exhibit_id: 1, entry: "answer one", question_id: 1, format: 'json'}
    end.to change(Answer, :count).by(1)

  end

end
