class UsersController < ApplicationController

  before_action :authenticate_user!, :except => [:index, :show]

  def show
  end

  def destroy
  end

end
