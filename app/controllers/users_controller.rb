class UsersController < ApplicationController
  include Pagy::Backend

  def index
    pagy, users = pagy(User.all)

    pagy_headers_merge(pagy)

    render json: users
  end
end
