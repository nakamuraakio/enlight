class UsersController < ApplicationController
  before_action :authenticate_firmuser!

  def index
  	@users = User.all
  	@profiles = Profile.all
  end
end