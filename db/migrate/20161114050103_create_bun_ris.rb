class CreateBunRis < ActiveRecord::Migration
  def change
    create_table :bun_ris do |t|

      t.string  :bun_ri,   null: false
      t.timestamps
    end
  end
end
