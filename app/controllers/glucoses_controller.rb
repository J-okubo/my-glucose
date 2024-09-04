class GlucosesController < ApplicationController
  def index
    @glucoses = Glucose.all
  end

end
