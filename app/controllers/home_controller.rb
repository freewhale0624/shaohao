class HomeController < ApplicationController
  def index
    default_time = Wheel.first.init_time || Time.now 
    @start_time = Time.now - (Time.now - default_time).to_i % ONEROUNDTIME
  end

  def gf_easy_solution
  end
end
