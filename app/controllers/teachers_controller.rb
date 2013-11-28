class TeachersController < MusiciansController
  def show
    @musician = Teacher.singleton
    super
    @gigs = @gigs.take(1)
    @locations = @musician.teaching_locations.collect {|e| e.description}
  end
end
