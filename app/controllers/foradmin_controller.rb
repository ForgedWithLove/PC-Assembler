class ForadminController < ApplicationController

  def manip_users
    @tab = User.all
  end

  def manip_hardware
  end

  def delete_user
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: 'User deleted.'
  end
end
