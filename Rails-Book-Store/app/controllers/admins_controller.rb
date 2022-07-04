class AdminsController < ApplicationController
  def show
    @admin = Admin.find(params[:id])
    p @admin
  end
end
