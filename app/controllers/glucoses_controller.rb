class GlucosesController < ApplicationController
  def index
    @glucoses = Glucose.all
  end

  def new
    @glucose = Glucose.new
  end

  def create
    @glucose = Glucose.new(glucose_params)
    if @glucose.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @glucose = Glucose.find(params[:id])
  end

  private
  def glucose_params
    params.require(:glucose).permit(:date, :before_breakfast_glucose, :after_breakfast_glucose, :before_lunch_glucose, :after_lunch_glucose, :before_dinner_glucose, :after_dinner_glucose, :remarks_section)
  end


  def move_to_index
    unless user_signed_in?
     redirect_to action: :index
    end
  end
end
