class QuestionsController < ApplicationController

  def index

      @questions= Question.all.sort { |a,b| a.score <=> b.score}
      @questions_most_responses = @questions.sort { |a,b| b.responses.count <=> a.responses.count }
      @questions_most_recent = @questions.sort { |a,b| b.created_at <=> a.created_at }
      @questions_recent_answered = @questions.sort { |a,b| b.responses.sort {|a,b| b.created_at <=> a.created_at} <=> a.responses.sort {|a,b| b.created_at <=> a.created_at} }

      @tags = Tag.all
      @responses = Response.all

  end

  def show
    @question = Question.find(params[:id])
    @response = Response.new
    @questions = Question.all
    @responses = Response.all
    @tag = Tag.new
  end

  def new
    @question = Question.new
    authorize! :create, @question
    @questions = Question.all
    @responses = Response.all
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

  def upvote
    @question = Question.find(params[:id])
    @question.upvote_by current_user
    redirect_to(questions_path)
  end

  def downvote
    @question = Question.find(params[:id])
    @question.downvote_by current_user
    redirect_to(questions_path)
  end



  private
  def question_params
    return params[:question].permit(:title, :body, :user_id)
  end


end
