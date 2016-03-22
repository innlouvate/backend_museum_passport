require 'rails_helper'

describe QuestionsController do

  render_views

  before do
    Museum.create(name: "Sample Museum")
    Exhibit.create(name: "Sample Exhibit", museum_id: 1)
    Question.create(description: "Sample Question", exhibit_id: 1)
  end

  it 'displays the questions for the correct museum exhibit from the database' do
    get :index, museum_id: 1, exhibit_id: 1
    parsed_body = JSON.parse(response.body)
    expect(response).to be_success
    expect(parsed_body.last).to eq({"question"=> {"id"=> 1, "description"=> 'Sample Question'}})
  end

end
