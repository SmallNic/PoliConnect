class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    binding.pry
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save!
      redirect_to(question_path(@question))
    else
      render :new
    end

    binding.pry
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
