class SessionsController < ActionController::API

  def new
  end

  def login
    @user = User.find_by(:username => params[:username])
    if @user && @user.authenticate(params[:password])
       render json: {user: user }
       #session[:user_id] = @user.id
    else
      render json {errors: "invalid credentials"}
    end
  end

  def destroy
    if session[:user_id].present?
      session.delete :user_id
    end
    redirect_to '/'
  end
end