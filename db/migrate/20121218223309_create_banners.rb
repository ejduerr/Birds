class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.integer :bird_id

      t.timestamps
    end
  end
end
