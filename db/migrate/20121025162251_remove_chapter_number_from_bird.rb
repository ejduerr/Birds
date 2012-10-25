class RemoveChapterNumberFromBird < ActiveRecord::Migration
  def up
    remove_column :birds, :chapter
      end

  def down
    add_column :birds, :chapter, :integer
  end
end
