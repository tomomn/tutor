class CreateUnivYears < ActiveRecord::Migration
  def change
    create_table :univ_years do |t|

      t.string  :univ_year,   null: false
      t.timestamps
    end
  end
end
