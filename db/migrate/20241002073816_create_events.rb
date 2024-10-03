class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events, id: :uuid do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.string :venue, null: false
      t.string :address
      t.string :city, null: false
      t.string :state, null: false
      t.string :country, null: false
      t.datetime :event_at, null: false
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6

      t.timestamps
    end

    add_index :events, :slug, unique: true
    add_index :events, [ :latitude, :longitude ]
  end
end
