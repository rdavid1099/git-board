class Commit < ApplicationRecord
  belongs_to :committer

  def self.save_data(commits)
    commits.each do |commit|
      committer = Committer.find_or_create_by(username: commit[:author][:username])
      Commit.create(
        message: commit[:message],
        sha: commit[:id],
        url: commit[:url],
        committer_id: committer.id
        )
    end
  end
end
