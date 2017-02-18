class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    username, password = session_params.values
    @user = User.find_by_credentials(username, password)

    if @user.nil?
      redirect_to new_user_url
    else
      login!(@user)
      @user.save
      redirect_to subs_url
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end

  private
  def session_params
    params.require(:user).permit(:username, :password)
  end
end
