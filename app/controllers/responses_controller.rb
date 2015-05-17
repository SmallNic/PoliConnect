class ResponsesController < ApplicationController

  def index
    @responses = Response.all
  end

  def show
  end

  def new
    @question = Question.find(params[:question_id])
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    if @response.save!
      redirect_to(question_path(@response.question))
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
  def response_params
    return params[:response].permit(:body, :question_id, :user_id)
  end


end
