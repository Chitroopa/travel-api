require 'rails_helper'

describe "get all destinations route", :type => :request do
  let!(:destinations) { FactoryGirl.create_list(:destination, 20)}

  before { get '/api/v1/destinations'}

  it 'returns all destinations' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
