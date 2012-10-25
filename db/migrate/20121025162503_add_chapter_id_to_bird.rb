class AddChapterIdToBird < ActiveRecord::Migration
  def change
    add_column :birds, :chapter_id, :integer

  end
end
