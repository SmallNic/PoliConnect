class AboutController < ApplicationController
  def index
    @questions = Question.all
    @responses = Response.all
    @tags = Tag.all

  end
end
