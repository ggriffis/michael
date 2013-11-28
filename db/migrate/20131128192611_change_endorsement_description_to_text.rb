class ChangeEndorsementDescriptionToText < ActiveRecord::Migration
  def up
    change_column :musician_endorsements, :description, :text
  end

  def down
    change_column :musician_endorsements, :description, :string
  end
end
