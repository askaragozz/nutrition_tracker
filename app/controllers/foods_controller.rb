class FoodsController < ApplicationController

  def index
    query = params[:q].to_s.strip
    @foods = if query.present?
              Food.where("name ILIKE ?", "%#{query}%").order(:name)
            else
              Food.includes(:category).order(:name)
            end
  end

  def show
    @food = Food.find(params[:id])
    respond_to do |format|
      format.html
      format.turbo_stream { render turbo_stream: turbo_stream.replace("food_details", partial: "foods/details", locals: { food: @food }) }
    end
  end

  private

  def food_params
    params.require(:food).permit(:q);
  end

end