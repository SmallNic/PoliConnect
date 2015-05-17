class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @response = Response.new
  end

  def new
    @question = Question.new
    @regionalTags = ["North America", "Latin America", "Sub-Saharan Africa", "Middle East/North Africa", "Europe", "Asia", "Oceania"]
    @policyTags = ["Security/Defense", "Economics", "Health", "Environment","Science and Technology"]
    @tag = Tag.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save!
      redirect_to(question_path(@question))
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def question_params
    return params[:question].permit(:title, :body, :user_id)
  end


end
