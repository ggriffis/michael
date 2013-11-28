ActiveAdmin.register Teacher do
  form do |f|
    f.inputs "Details" do
      f.input :my_story, label: "Teaching philosophy"
      f.input :education_summary
      f.input :type
    end
    f.inputs "Links" do
      f.has_many  :musician_links do |ml|
        ml.input :description
        ml.input :url
        ml.input :importance
        ml.input :display_link
        ml.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Images" do
      f.has_many  :musician_images do |ml|
        ml.input :description
        ml.input :image
        ml.input :main
        ml.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Endorsements" do
      f.has_many  :musician_endorsements do |me|
        me.input :description
        me.input :endorser_name
        me.input :endorser_relationship
        me.input :endorser_url
        me.input :importance
        me.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Video links" do
      f.has_many :musician_video_links do |vl|
        vl.input :title
        vl.input :description
        vl.input :url
        vl.input :importance
        vl.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Mentors" do
      f.has_many :mentors do |m|
        m.input :description
        m.input :name
        m.input :url
        m.input :importance
        m.inputs "Mentor image" do
          m.has_many :mentor_image do |mi|
            mi.input :image
            mi.input :description
          end
        end
        m.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Recitals" do
      f.has_many  :gigs do |g|
        g.input :title
        g.input :description
        g.input :url
        g.input :location
        g.input :performance_date
        g.input :timeframe
        g.input :ticket_price
        g.input :program
        g.input :address
        g.inputs "Recital Image" do
          g.has_many :gig_image do |gi|
            gi.input :description
            gi.input :image
            gi.input :_destroy, :as => :boolean
          end
        end
        g.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Jobs" do
      f.has_many  :musician_jobs do |me|
        me.input :title
        me.input :description
        me.input :importance
        me.input :short_description
        me.input :duration
        me.input :location
        me.input :company
        me.input :url
        me.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Teaching Locations" do
      f.has_many  :teaching_locations do |tl|
        tl.input :description
      end
    end
    f.actions
  end
end
