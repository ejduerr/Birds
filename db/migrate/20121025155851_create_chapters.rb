class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.text :name
      t.integer :number
      t.text :english_story
      t.text :chinese_story
      t.text :tibetan_story
      t.text :english_description
      t.text :chinese_description

      t.timestamps
    end
  end
end
