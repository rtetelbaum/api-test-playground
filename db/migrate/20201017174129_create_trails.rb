class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :summary
      t.string :difficulty
      t.float :length
      t.float :stars
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
