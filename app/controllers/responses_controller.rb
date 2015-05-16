class ResponseController < ApplicationController

  def index
    @responses = Response.all
  end

  def show
  end

  def new
    @response = Question.new
  end

  def create
    @response = Response.new(question_params)
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
  def response_params
    return params[:response].permit(:title, :body, :user_id)
  end


end
