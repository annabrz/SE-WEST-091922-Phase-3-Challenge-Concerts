class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :date
      t.string :band_id
      t.string :venue_id
    end
  end
end
