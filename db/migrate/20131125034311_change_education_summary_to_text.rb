class ChangeEducationSummaryToText < ActiveRecord::Migration
  def up
    change_column :musicians, :education_summary, :text
  end
  def down
    change_column :musicians, :education_summary, :string
  end
end
