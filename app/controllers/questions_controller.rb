class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @tags = Tag.all
    @responses = Response.all
  end

  def show
    @question = Question.find(params[:id])
    @response = Response.new
    @questions = Question.all
    @responses = Response.all
  end

  def new
    @question = Question.new
    authorize! :create, @question
  end

  def create
    @question = Question.new(question_params)
    authorize! :create, @question
    if @question.save!
      redirect_to(question_path(@question))
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
    authorize! :update, @question
  end

  def update
    @question = Question.find(params[:id])
    authorize! :update, @question
    @question.update!(question_params)
    @question.save
    redirect_to(question_path(@question))
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to(questions_path)
  end



  private
  def question_params
    return params[:question].permit(:title, :body, :user_id)
  end


end
