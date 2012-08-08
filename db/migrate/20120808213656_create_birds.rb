class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :common_name
      t.string :scientific_name
      t.string :chinese_name
      t.string :tibetan_name
      t.string :size
      t.boolean :summer
      t.boolean :fall
      t.boolean :winter
      t.boolean :spring
      t.text :english_description
      t.text :chinese_description
      t.integer :chapter

      t.timestamps
    end
  end
end
