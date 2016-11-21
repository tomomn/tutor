class CreateAges < ActiveRecord::Migration
  def change
    create_table :ages do |t|

      t.string  :age,   null: false
      t.timestamps
    end
  end
end
