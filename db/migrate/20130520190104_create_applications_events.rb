class CreateApplicationsEvents < ActiveRecord::Migration
  def change
    create_table :applications_events do |t|
      t.string :name
      t.date :deadline_internal
      t.string :url
      t.string :announcement_url
      t.text :comment

      t.timestamps
    end
  end
end
