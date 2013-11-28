class MainController < ApplicationController
  def index
    @pianist = Pianist.singleton
    @pianist_image_url = @pianist.main_image.image_url(:small).to_s
    @accompanist = Accompanist.singleton
    @accompanist_image_url = @accompanist.main_image.image_url(:small).to_s
    @teacher = Teacher.singleton
    @teacher_image_url = @teacher.main_image.image_url(:small).to_s
  end

  def set_main
    @is_main = true
  end
end
