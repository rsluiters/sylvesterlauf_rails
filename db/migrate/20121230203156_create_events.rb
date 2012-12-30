class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :name
      t.integer :raceresults_id
      t.timestamp :registration_start
      t.timestamp :registration_end

      t.timestamps
    end
  end
end
