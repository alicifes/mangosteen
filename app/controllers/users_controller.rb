class UsersController < ApplicationController
  def create
    user = User.new name: 'frank'
    if user.save 
      render json: user
    else 
      render json: user.errors
    end
    p '你访问了create'
  end

  def show
    user = User.find_by_id parames[:id]
    if user
      render json: user
    else
      head 404
    end
  end
end
