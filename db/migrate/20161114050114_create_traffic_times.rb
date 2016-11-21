class CreateTrafficTimes < ActiveRecord::Migration
  def change
    create_table :traffic_times do |t|

      t.string  :traffic_time,   null: false
      t.timestamps
    end
  end
end
