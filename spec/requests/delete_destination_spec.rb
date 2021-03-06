require 'rails_helper'

describe "post a destination route", :type => :request do
  let!(:destination) { FactoryGirl.create(:destination)}

  before do
    delete '/api/v1/destinations/' + destination.id.to_s
  end

  it 'returns the deletion confirmation message' do
    expect(JSON.parse(response.body)['message']).to eq('Destination deleted')
  end

  it 'returns a success status' do
    expect(response).to have_http_status(:success)
  end
end
