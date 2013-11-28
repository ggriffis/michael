class TeachingLocation < ActiveRecord::Base
  attr_accessible :description
  belongs_to :musician
end
