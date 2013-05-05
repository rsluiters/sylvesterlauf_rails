class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.string :picture_url

      t.timestamps
    end
  end
end
