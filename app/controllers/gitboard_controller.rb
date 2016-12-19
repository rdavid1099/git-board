class GitboardController < ApplicationController
  def show
    @commits = Commit.all
  end
end
