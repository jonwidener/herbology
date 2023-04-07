class DashboardController < ApplicationController
  def index
    @herb = Herb.find 1
  end
end
