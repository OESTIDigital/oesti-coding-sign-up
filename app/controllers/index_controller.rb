class IndexController < ApplicationController
  def index
    @exercises = Exercise.all
  end
end
