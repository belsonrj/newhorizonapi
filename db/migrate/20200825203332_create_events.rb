class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.belongs_to :artist, index: true, foreign_key: true
      t.belongs_to :venue, index: true, foreign_key: true

      t.timestamps
    end
  end
end
