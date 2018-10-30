require 'rails_helper'

RSpec.describe "rentals#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/rentals/#{rental.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:rental) { create(:rental) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:rental, rental, json_item)
    end
  end
end
