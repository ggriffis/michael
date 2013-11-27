class MusicianJobsController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    add_necessary_breadcrumbs
    @jobs = @musician.ordered_musician_jobs
  end

  def show
    @job = MusicianJob.find(params[:id])
    @musician = @job.musician
    add_necessary_breadcrumbs
    add_breadcrumb "Jub", @job
  end

  def add_necessary_breadcrumbs
    add_breadcrumb "Gigs", musician_gigs_path(@musician)
    add_breadcrumb "Samples", musician_musician_video_links_path(@musician)
    add_breadcrumb "Repertoire", musician_pieces_path(@musician)
    add_breadcrumb "Endorsements", musician_musician_endorsements_path(@musician)
    add_breadcrumb "Photo Gallery", musician_musician_images_path(@musician)
    add_breadcrumb "Testimonials", musician_musician_endorsements_path(@musician)
  end
end
