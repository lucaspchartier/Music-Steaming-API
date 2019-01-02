class CreateReleases < ActiveRecord::Migration[5.2]
  def change
    create_table :releases do |t|
      t.string :title
      t.integer :year_released
      t.integer :number_of_tracks

      t.timestamps
    end
  end
end
