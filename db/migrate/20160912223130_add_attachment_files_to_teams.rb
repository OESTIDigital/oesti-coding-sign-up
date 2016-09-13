class AddAttachmentFilesToTeams < ActiveRecord::Migration
  def self.up
    change_table :teams do |t|
      t.attachment :files
    end
  end

  def self.down
    remove_attachment :teams, :files
  end
end
