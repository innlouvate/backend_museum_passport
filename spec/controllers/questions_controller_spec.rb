require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  render_views

  it 'displays the questions for the correct museum exhibit from the database' do
    test_museum = Museum.create(name: "Sample Museum")
    test_exhibit = Exhibit.create(name: "Sample Exhibit", museum_id: test_museum.id)
    test_question = Question.create(description: "Sample Question", exhibit_id: test_exhibit.id)
    get :index
    # get "/museums/#{test_museum.id}/exhibits/#{test_exhibit.id}/questions", {}, {"Accept" => "application/json"}
    p "I am a dog"
    parsed_body = JSON.parse(response.body)
    p parsed_body
    p "i am a cat"
    expect(response).to be_success
    p parsed_body
    p "I am not going to print cos I'm sulking"
    expect(parsed_body.last).to eq(test_question)
    # expect(parsed_body[0]["museum"]["answers"][0]["exhibit"]["id"]).to eq(test_museum.id)
  end

end
