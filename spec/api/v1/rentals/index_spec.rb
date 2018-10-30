require 'rails_helper'

RSpec.describe "rentals#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/rentals",
      params: params
  end

  describe 'basic fetch' do
    let!(:rental1) { create(:rental) }
    let!(:rental2) { create(:rental) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([rental1.id, rental2.id])
      assert_payload(:rental, rental1, json_items[0])
      assert_payload(:rental, rental2, json_items[1])
    end
  end
end
