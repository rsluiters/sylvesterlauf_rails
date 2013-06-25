class CreateGuestbookEntries < ActiveRecord::Migration
  def change
    create_table :guestbook_entries do |t|
      t.text :content
      t.string :name
      t.string :email
      t.integer :status

      t.timestamps
    end
  end
end
