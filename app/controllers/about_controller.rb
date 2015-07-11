class AboutController < ApplicationController
  def index

    @tags = Tag.all

  end
end
