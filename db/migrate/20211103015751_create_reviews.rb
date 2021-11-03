class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.integer :overall_score
      t.integer :food_score
      t.integer :fans_score
      t.integer :cleanliness_score
      t.boolean :recommends
      t.belongs_to :stadium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
