require 'rails_helper'

RSpec.describe 'Counties API', type: :request do
   # initialize test data 
  let!(:counties) { create_list(:county, 10) }
  let(:county_id) { counties.first.id }

  # Test suite for GET /counties
  describe 'GET /counties' do
    
    before { get '/counties' }
    
    it 'returns counties' do
      expect(json).to_not be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for POST /counties
  describe 'POST /counties' do
    let(:valid_attributes) { { title: 'Kern' , lat: 35.2736961, lng: -121.1482965} }
    
    context 'when the request is valid' do
      before { post '/counties', params: valid_attributes }

      it 'creates a county' do
        expect(json['title']).to eq('Kern') #chang expect(json.to eq)...the entire json object
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/counties', params: { title: 'meow' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Lat can't be blank, Lng can't be blank/)
      end
    end
  end
end

