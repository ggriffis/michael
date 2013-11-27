class AccompanistsController < MusiciansController
  def show
    @musician = Accompanist.singleton
    super
  end
end
