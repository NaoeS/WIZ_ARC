class UsersController < ApplicationController
  def index
    paginate json: User.all
  end
end
