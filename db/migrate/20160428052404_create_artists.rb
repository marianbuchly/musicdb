class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.string :img

      t.timestamps null: false
    end
  end
end
