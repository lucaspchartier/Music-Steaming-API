class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :year_formed
      t.string :genre

      t.timestamps
    end
  end
end
