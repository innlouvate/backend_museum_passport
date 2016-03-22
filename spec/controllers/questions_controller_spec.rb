require 'rails_helper'

describe QuestionsController do

  render_views

  it 'displays the questions for the correct museum exhibit from the database' do
    test_museum = Museum.create(name: "Sample Museum")
    test_exhibit = Exhibit.create(name: "Sample Exhibit", museum_id: test_museum.id)
    test_question = Question.create(description: "Sample Question", exhibit_id: test_exhibit.id)
    get :index, museum_id: test_museum.id, exhibit_id: test_exhibit.id
    parsed_body = JSON.parse(response.body)
    expect(response).to be_success
    expect(parsed_body.last).to eq({"question"=> {"id"=> test_question.id, "description"=> 'Sample Question'}})
  end

end
