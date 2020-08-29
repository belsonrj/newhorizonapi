class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.string :comment
      t.belongs_to :event, foreign_key: true

      t.timestamps
    end
  end
end
