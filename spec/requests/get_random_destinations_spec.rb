require 'rails_helper'
require 'spec_helper'

describe "get a random destination route", :type => :request do
  let!(:destinations) { FactoryGirl.create_list(:destination, 20)}

  before { get '/api/v1/destinations?get_random=yes'}

  it 'returns all destinations' do
     expect(JSON.parse(response.body).size).to eq(8)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
