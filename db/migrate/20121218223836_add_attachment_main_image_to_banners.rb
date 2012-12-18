class AddAttachmentMainImageToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.has_attached_file :main_image
    end
  end

  def self.down
    drop_attached_file :banners, :main_image
  end
end
