require 'rails_helper'

RSpec.describe "rentals#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/rentals/#{rental.id}", payload
  end

  describe 'basic update' do
    let!(:rental) { create(:rental) }

    let(:payload) do
      {
        data: {
          id: rental.id.to_s,
          type: 'rentals',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect {
        make_request
      }.to change { rental.reload.attributes }
      assert_payload(:rental, rental, json_item)

      # ... assert updates attributes ...
    end
  end
end
