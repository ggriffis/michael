class ChangeJobDescriptionToText < ActiveRecord::Migration
  def up
    change_column :musician_jobs, :description, :text
  end
  def down
    change_column :musician_jobs, :description, :string
  end
end
