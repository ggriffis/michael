class MusicianJob < ActiveRecord::Base
  attr_accessible :description, :short_description, :company, :duration, :importance,
                  :location, :url, :title
  belongs_to :musician

end
