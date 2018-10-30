require 'rails_helper'

RSpec.describe "rentals#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/rentals", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'rentals',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { Rental.count }.by(1)
      rental = Rental.last

      assert_payload(:rental, rental, json_item)
    end
  end
end
