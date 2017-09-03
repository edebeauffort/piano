class CreateSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :sheets do |t|
      t.string :title
      t.string :artist
      t.string :genre

      t.timestamps
    end
  end
end
