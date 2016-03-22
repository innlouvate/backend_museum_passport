require 'rails_helper'

RSpec.describe MuseumsController, type: :controller do

  render_views

  it 'displays the museum and its exhibits in the database' do
    test_museum = Museum.create(name: "Sample Museum")
    test_exhibit = Exhibit.create(name: "Sample Exhibit", museum_id: test_museum.id)
    test_question = Question.create(description: "Sample Question", exhibit_id: test_exhibit.id)
    get :index
    json = JSON.parse(response.body)
    expect(response).to be_success
    expect(json[0]["museum"]["id"]).to eq(test_museum.id)
    expect(json[0]["museum"]["answers"][0]["exhibit"]["id"]).to eq(test_museum.id)
  end

end
