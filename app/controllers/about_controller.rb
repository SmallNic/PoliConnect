class AboutController < ApplicationController
  def index
    @questions = Question.all
    @responses = Response.all
  end
end
