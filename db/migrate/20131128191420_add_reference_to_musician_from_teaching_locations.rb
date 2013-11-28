class AddReferenceToMusicianFromTeachingLocations < ActiveRecord::Migration
  def change
    add_column :teaching_locations, :musician_id, :integer
  end
end
