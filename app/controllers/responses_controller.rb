class ResponsesController < ApplicationController

  def index
    @responses = Response.all
  end

  def show
  end

  def new
    # binding.pry
    @question = Question.find(params[:question_id])
    @response = Response.new
    authorize! :create, @response
  end


  def create
    @response = Response.new(response_params)
    authorize! :create, @response
    if @response.save!
      redirect_to(question_path(@response.question))
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
    @response = Response.find(params[:id])
    @response.destroy
    redirect_to(questions_path)
  end

  private
  def response_params
    return params[:response].permit(:body, :question_id, :user_id)
  end


end
