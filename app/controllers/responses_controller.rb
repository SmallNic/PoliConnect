class ResponsesController < ApplicationController

  def index
    @responses = Response.all
  end

  def show
  end

  def new
<<<<<<< HEAD
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

=======
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
>>>>>>> 78781b79407dad5c13542c1867d82ccd336c0df7
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
    return params[:response].permit(:body, :question_id, :user_id)
  end


end
