class CreateApplicationsApplications < ActiveRecord::Migration
  def change
    create_table :applications_applications do |t|
      t.integer :applications_event_id
      t.string :name
      t.integer :birth_year
      t.string :course
      t.text :comment

      t.timestamps
    end
  end
end
