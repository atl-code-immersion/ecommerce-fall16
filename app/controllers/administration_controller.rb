class AdministrationController < ApplicationController

  before_filter :authenticate_user!
  
  def user_list
  	@employees = User.where(role: "admin")
  	@customers = User.where(role: "guest")
  end

  def add_admin
  	User.find(params[:id]).update(role: "admin")
  	redirect_to :back
  end

  def remove_admin
  	User.find(params[:id]).update(role: "guest")
  	redirect_to :back
  end
end
