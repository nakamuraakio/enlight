class UsersController < ApplicationController
  before_action :authenticate_firmuser!

  def index
  	@users = User.all
  	@profiles = Profile.all
  	@profiles = Profile.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @profile = Profile.find(params[:id])
  end
end