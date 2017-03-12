class UsersController < ApplicationController

  def index
    @q = User.ransack(params[:q])
    @people = @q.result(distinct: true)

  end
  def show
    @user = User.find(params[:id])
  end

end
