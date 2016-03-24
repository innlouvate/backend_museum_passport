require 'rails_helper'

describe QuestionsController do

  render_views

  before do
    @test_museum = Museum.create(name: "Sample Museum")
    @test_exhibit = Exhibit.create(name: "Sample Exhibit", museum_id: @test_museum.id)
    Question.create(description: "Sample Question", exhibit_id: @test_exhibit.id)
  end

  it 'displays the questions for the correct museum exhibit from the database' do
    get :index, museum_id: @test_museum.id, exhibit_id: @test_exhibit.id
    parsed_body = JSON.parse(response.body)
    expect(response).to be_success
    expect(parsed_body.last).to eq({"question"=> {"id"=> 2, "description"=> 'Sample Question'}})
  end

  it "the requests support CORS headers" do
    get :index, museum_id: @test_museum.id, exhibit_id: @test_exhibit.id

    expect(response.headers['Access-Control-Allow-Origin']).to eq('*')
    expect(response.headers['Access-Control-Allow-Methods']).to eq('POST, GET, OPTIONS')
  end


end
