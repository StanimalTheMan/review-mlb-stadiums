class CreateStadia < ActiveRecord::Migration[6.1]
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :team_logo_img_url
      t.string :location
      t.string :team_name
      t.integer :opened
      t.string :image_url
      t.string :slug

      t.timestamps
    end
  end
end
