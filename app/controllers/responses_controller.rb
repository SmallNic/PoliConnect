class ResponsesController < ApplicationController

  def index
    @responses = Response.all
  end

  def show
  end

  def new
    @response = Question.new
    authorize! :create, @response
  end

  def create
    @response = Response.new(question_params)
    authorize! :create, @response
    if @question.save!
      redirect_to(question_path(@question))
    else
      render :new
    end

  end

  def edit
    authorize! :update, @response
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
