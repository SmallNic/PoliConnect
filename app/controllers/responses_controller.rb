class ResponseController < ApplicationController

  def index
    @responses = Response.all
  end

  def show
  end

  def new
    @response = Question.new
    authorize! :create, @question
  end

  def create
    @response = Response.new(question_params)
    authorize! :create, @question
    if @question.save!
      redirect_to(question_path(@question))
    else
      render :new
    end

    binding.pry

  end

  def edit
    authorize! :update, @question
  end

  def update
    authorize! :update, @question
  end

  def destroy
  end

  private
  def response_params
    return params[:response].permit(:title, :body, :user_id)
  end


end
