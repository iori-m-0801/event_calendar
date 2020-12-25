class UsersController < ApplicationController
  def show
    @nickname = current_user.name
  end
end
