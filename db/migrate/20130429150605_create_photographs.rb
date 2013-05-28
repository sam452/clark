class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|
      t.string :filename
      t.string :path
      t.boolean :featured
      t.integer :coolness
      t.boolean :discontinued
      t.string :caption
      t.string :gps
      t.string :make
      t.string :model
      t.datetime :photographed
      t.string :shutter
      t.string :f_stop
      t.string :aperture
      t.integer :iso
      t.string :focal_length
      t.string :lens
      t.text :flash

      t.timestamps
    end
  end
end
