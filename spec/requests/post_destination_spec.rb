require 'rails_helper'

describe "post a destination route", :type => :request do

  before do
    post '/api/v1/destinations', params: { :name => 'test', :country => 'USA', :city => 'Kirkland', :rating => 5 }
  end

  it 'returns the destination name' do
    expect(JSON.parse(response.body)['name']).to eq('test')
  end

  it 'returns the destination city' do
    expect(JSON.parse(response.body)['city']).to eq('Kirkland')
  end

  it 'returns a success status' do
    expect(response).to have_http_status(:success)
  end
end
