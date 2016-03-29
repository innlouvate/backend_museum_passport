require 'rails_helper'

describe ExhibitsController, type: :controller do

  render_views

  before do
    @test_museum = Museum.create(name: "Sample Museum", id: 1)
    Exhibit.create(name: "Sample exhibit", id: 1, museum_id: @test_museum.id)
  end

  it 'displays the exhibits for the correct museum from the database' do
    get :index, museum_id: @test_museum.id
    parsed_body = JSON.parse(response.body)
    expect(response).to be_success
    expect(parsed_body.last).to eq({"exhibit"=> {"id"=> 1, "name"=> 'Sample exhibit'}})
  end

  it "the requests support CORS headers" do
    get :index, museum_id: @test_museum.id
    expect(response.headers['Access-Control-Allow-Origin']).to eq('*')
    expect(response.headers['Access-Control-Allow-Methods']).to eq('POST, GET, OPTIONS')
  end
end
