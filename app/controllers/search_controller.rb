class SearchController < ApplicationController
  def search
    if params[:query].present?
      @questions = Question.search params[:query], page: params[:page], per_page: 10
    else
      @questions=Question.all.page(params[:page]).per(10)

    end
    @responses=Response.all
    @tags=Tag.all
  end
end
