class GlucosesController < ApplicationController

  def show
    @glucoses = Glucose.all
  end
end
