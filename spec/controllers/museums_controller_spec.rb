require 'rails_helper'

describe MuseumsController, type: :controller do

  render_views

  before do
    @test_museum = Museum.create(name: "Sample Museum")
  end

  it 'displays the museums from the database' do
    get :index, museum_id: @test_museum.id
    parsed_body = JSON.parse(response.body)
    expect(response).to be_success
    expect(parsed_body.last).to eq({"museum"=> {"id"=> 1, "name"=> 'Sample Museum'}})
  end

  it "the requests support CORS headers" do
    get :index, museum_id: @test_museum.id
    expect(response.headers['Access-Control-Allow-Origin']).to eq('*')
    expect(response.headers['Access-Control-Allow-Methods']).to eq('POST, GET, OPTIONS')
  end
end
