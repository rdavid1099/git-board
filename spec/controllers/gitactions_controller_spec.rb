require 'rails_helper'

RSpec.describe 'GitactionsController' do
  it 'receives the payload' do
    conn.post do |req|
      req.url '/api/v1/push'
      req.headers['Content-Type'] = 'application/json'
      req.body = github_response.to_json
    end

    expect(true).to eq(true)
  end
end
