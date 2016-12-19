class Api::V1::GitactionsController < ApplicationController
  def create
    Commit.save_data(params[:commits])
    render json: {
      status: 200,
      message: "Successfully created commits.",
    }.to_json
  end
end
