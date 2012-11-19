class AddFieldToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :chinese_name, :text

  end
end
