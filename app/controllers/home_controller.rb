class HomeController < ApplicationController
  def index
    @start_time = Wheel.first.blank? ? nil : Time.now - (Time.now - Wheel.first.init_time ).to_i % ONEROUNDTIME
    @wheel = Wheel.first
  end

  def gf_easy_solution
  end
end