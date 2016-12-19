require 'rails_helper'

RSpec.describe 'GitactionsController' do
  xit 'receives the payload' do
    conn.post do |req|
      req.url '/api/v1/push'
      req.headers['Content-Type'] = 'application/json'
      req.body = github_response.to_json
    end

    expect(Commit.count).to eq(1)
    expect(Committer.count).to eq(1)
  end
end
