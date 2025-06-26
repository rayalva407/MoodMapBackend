class AddMoodNameToMoods < ActiveRecord::Migration[8.0]
  def change
    add_column :moods, :mood_name, :string
  end
end
