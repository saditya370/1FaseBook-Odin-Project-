class UserController < ApplicationController
  def show
    @a = current_user
  end
  def index

    @user = User.all

  end
end
