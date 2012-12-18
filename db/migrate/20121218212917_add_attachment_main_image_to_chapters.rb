class AddAttachmentMainImageToChapters < ActiveRecord::Migration
  def self.up
    change_table :chapters do |t|
      t.has_attached_file :main_image
    end
  end

  def self.down
    drop_attached_file :chapters, :main_image
  end
end
