class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :date
      t.string :img_url
      t.string :comment

      t.timestamps
    end
  end
end
