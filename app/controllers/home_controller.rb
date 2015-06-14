class HomeController < ApplicationController
  def index
    @start_time = Wheel.first.blank? ? nil : Time.zone.now - (Time.zone.now - Wheel.first.init_time ).to_i % ONEROUNDTIME
    @wheel = Wheel.first
    @carousels = Carousel.all
  end

  def gf_easy_solution
  end
end
