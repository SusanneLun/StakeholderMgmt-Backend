require 'rails_helper'

RSpec.describe 'Stakeholders API', type: :request do
  # initialize test data
  let!(:stakeholders) { create_list(:stakeholder, 10) }
  let(:stakeholder_id) { stakeholders.first.id }

  # Test suite for GET /stakeholders
  describe 'GET /stakeholders' do
    # make HTTP get request before each example
    before { get '/stakeholders' }

    it 'returns stakeholders' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /stakeholders/:id
  describe 'GET /stakeholders/:id' do
    before { get "/stakeholders/#{stakeholder_id}" }

    context 'when the record exists' do
      it 'returns the stakeholder' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(stakeholder_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:stakeholder_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Stakeholder/)
      end
    end
  end

  # Test suite for POST /stakeholders
  describe 'POST /stakeholders' do
    # valid payload
    let(:valid_attributes) { { title: 'Learn Elm', created_by: '1' } }

    context 'when the request is valid' do
      before { post '/stakeholders', params: valid_attributes }

      it 'creates a stakeholder' do
        expect(json['title']).to eq('Learn Elm')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/stakeholders', params: { title: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Created by can't be blank/)
      end
    end
  end

  # Test suite for PUT /stakeholders/:id
  describe 'PUT /stakeholders/:id' do
    let(:valid_attributes) { { title: 'Shopping' } }

    context 'when the record exists' do
      before { put "/stakeholders/#{stakeholder_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /stakeholders/:id
  describe 'DELETE /stakeholders/:id' do
    before { delete "/stakeholders/#{stakeholder_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
