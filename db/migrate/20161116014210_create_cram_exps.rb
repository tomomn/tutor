class CreateCramExps < ActiveRecord::Migration
  def change
    create_table :cram_exps do |t|

      t.string  :cram_exp,   null: false
      t.timestamps
    end
  end
end
