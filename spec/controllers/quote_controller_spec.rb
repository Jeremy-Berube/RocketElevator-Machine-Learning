require 'rails_helper'

# This test will check the HTTP response status
RSpec.describe QuotesController do
    context 'when quote is created' do
        it 'checks HTTP response status' do
            quote = Quote.create
            expect(response.status).to eq(200)
        end
    end
end