class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|

      t.integer :user_id,                 null: false
      t.string  :nickname,                null: false
      t.integer :prefecture_id,           null: false
      t.string  :city,                    null: false
      t.integer :age_id,                  null: false
      t.integer :gender_id,               null: false
      t.integer :school_year_id,          null: false
      t.string  :fee,                     null: false
      t.string  :traffic_fee
      t.string  :subject,                 null: false
      t.string  :station
      t.string  :station_distance
      t.string  :station_etc
      t.string  :instruction_frequency
      t.string  :instruction_hour
      t.string  :instruction_week
      t.string  :instruction_term
      t.text  :purpose
      t.text  :request
      t.timestamps
    end
  end
end


