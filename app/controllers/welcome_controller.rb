class WelcomeController < ApplicationController
  def index
    @users=User.all
    @search = User.ransack(params[:q])
    @users = @search.result
    @search.build_condition
    @users = User.page(params[:page]).per(5)
  end
end
