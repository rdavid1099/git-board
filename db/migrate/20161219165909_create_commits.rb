class CreateCommits < ActiveRecord::Migration[5.0]
  def change
    create_table :commits do |t|
      t.string :message
      t.string :sha
      t.string :url
      t.references :committer, foreign_key: true

      t.timestamps
    end
  end
end
