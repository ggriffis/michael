class CreateTeachingLocations < ActiveRecord::Migration
  def change
    create_table :teaching_locations do |t|
      t.string :description
    end
  end
end
