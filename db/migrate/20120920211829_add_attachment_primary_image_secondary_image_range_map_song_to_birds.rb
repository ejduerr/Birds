class AddAttachmentPrimaryImageSecondaryImageRangeMapSongToBirds < ActiveRecord::Migration
  def self.up
    change_table :birds do |t|
      t.has_attached_file :primary_image
      t.has_attached_file :secondary_image
      t.has_attached_file :range_map
      t.has_attached_file :song
    end
  end

  def self.down
    drop_attached_file :birds, :primary_image
    drop_attached_file :birds, :secondary_image
    drop_attached_file :birds, :range_map
    drop_attached_file :birds, :song
  end
end
