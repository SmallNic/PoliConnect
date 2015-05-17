class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
    @tag = Tag.new
    @question = Question.find(params[:question_id])
    # @regionalTags = ["North America", "Latin America", "Sub-Saharan Africa", "Middle East/North Africa", "Europe", "Asia", "Oceania"]
    # @policyTags = ["Security/Defense", "Economics", "Health", "Environment","Science and Technology"]
  end

  def create
    # @tag = Tag.new(tag_params)
    question_id = params[:question_id]
    question = Question.find(question_id)
    tagNames = tag_params[:name].split(", ").uniq
    tagNames.each do |tagName|
      tag = Tag.new(name:tagName, question_id:question_id)
      tag.save!
    end
    # if @tag.save!
    #   redirect_to(question_path(@tag.question))
    # else
    #   render :new
    # end
    redirect_to(question_path(question))
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def tag_params
    return params[:tag].permit(:name,:question_id)
  end


end
