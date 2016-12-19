class GitboardController < ApplicationController
  def show
    @commits = Commit.all_commits
  end
end
