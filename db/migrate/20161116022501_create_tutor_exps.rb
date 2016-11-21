class CreateTutorExps < ActiveRecord::Migration
  def change
    create_table :tutor_exps do |t|

      t.string  :tutor_exp,   null: false
      t.timestamps
    end
  end
end
