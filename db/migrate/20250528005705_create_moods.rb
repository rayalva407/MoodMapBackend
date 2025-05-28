class CreateMoods < ActiveRecord::Migration[8.0]
  def change
    create_table :moods do |t|
      t.string :longitude
      t.string :latitude
      t.string :mood_description

      t.timestamps
    end
  end
end
