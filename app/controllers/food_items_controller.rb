class FoodItemsController < ApplicationController

  def index
    query = params[:q].to_s.strip
    @food_items = if query.present?
              FoodItem.where("LOWER(name) LIKE ?", "%#{query.downcase}%").order(:name)
            else
              FoodItem.includes(:category).order(:name)
            end
  end

  def show
    @food_item = FoodItem.find(params[:id])
    respond_to do |format|
      format.html
      format.turbo_stream { render turbo_stream: turbo_stream.replace("food_details", partial: "food_items/details", locals: { food_item: @food_item }) }
    end
  end

  private

  def food_params
    params.require(:food_item).permit(:q);
  end

end