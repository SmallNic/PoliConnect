class UsersController < ApplicationController

  before_action :authenticate_user!, :except => [:index, :show]
  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
