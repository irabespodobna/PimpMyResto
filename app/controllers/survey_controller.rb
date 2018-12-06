class SurveyController < ApplicationController
  def survey
    @foodstyle_categories = FoodstyleCategory.all
    @the_restos = Resto.all
  end

  def index
    @surveys = Survey.all
  end

  def create
    Survey.create foodstyle_category_id: params[:foodstyle_category_id], resto_id: params[:resto_id]
    redirect_to "/survey/index"
  end

end
