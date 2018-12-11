class WelcomeController < ApplicationController
  def index
    @time = Time.now.in_time_zone("Brasilia").to_s.split(" ").second
  end
end
