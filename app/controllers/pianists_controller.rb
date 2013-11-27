class PianistsController < MusiciansController
  def show
    @musician = Pianist.singleton
    super
  end
end
