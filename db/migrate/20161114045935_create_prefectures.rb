class CreatePrefectures < ActiveRecord::Migration
  def change
    create_table :prefectures do |t|

      t.string  :prefecture,   null: false
      t.timestamps
    end
  end
end
