class Musician < ActiveRecord::Base
  attr_accessible :type, :my_story, :musician_links_attributes, :musician_images_attributes, :musician_endorsements_attributes,
                   :gigs_attributes, :genres_attributes, :education_summary,
                  :musician_video_links_attributes, :mentors_attributes, :musician_jobs_attributes

  has_many :musician_links
  has_many :musician_images
  has_many :musician_endorsements
  has_many :gigs
  has_many :genres
  has_many :musician_video_links
  has_many :mentors
  has_many :musician_jobs

  accepts_nested_attributes_for :musician_links,
                                 :musician_images,
                                 :musician_endorsements,
                                 :gigs,
                                 :genres,
                                 :musician_video_links,
                                 :mentors,
                                 :musician_jobs,
                                 allow_destroy: true
  def self.singleton
    self.all.first
  end

  def main_image
    proc = Proc.new {self.musician_images.first}
    self.musician_images.detect(proc) do |e|
      e.main?
    end
  end

  def songs
    self.genres.collect {|e| e.songs}.flatten
  end

  def upcoming_gigs
    all_gigs = gigs
    future_gigs = all_gigs.select do |e|
      e.performance_date >= Date.today
    end
    future_gigs.sort! {|a,b| a.performance_date <=> b.performance_date}
  end

  def past_gigs
    all_gigs = gigs
    old_gigs = all_gigs.select do |e|
      e.performance_date < Date.today
    end
    old_gigs.sort! {|a,b| b.performance_date <=> a.performance_date}
  end

  def ordered_gigs
    all_gigs = gigs
    all_gigs.sort {|a,b| a.performance_date <=> b.performance_date}
  end

  def ordered_genres
    genres.sort {|a,b| a.title <=> b.title}
  end

  def ordered_mentors
    mentors.sort {|a,b| a.importance <=> b.importance}
  end

  def ordered_genres
    genres.sort {|a,b| a.importance <=> b.importance}
  end

  def ordered_by_name_genres
    genres.sort {|a,b| a.title <=> b.title}
  end

  def ordered_composers
    all_composers = genres.collect {|e| e.composers}.flatten
    all_composers.sort {|a,b| a.last_name <=> b.last_name}
  end

  def ordered_musician_endorsements
    musician_endorsements.sort {|a,b| a.importance <=> b.importance}
  end

  def ordered_musician_jobs
    musician_jobs.sort {|a,b| a.importance <=> b.importance}
  end

  def ordered_video_links
    musician_video_links.sort {|a,b| a.importance <=> b.importance}
  end
end
