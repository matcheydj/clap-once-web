class UsersController < ApplicationController

  def routing
    if session[:id]
      redirect '/dashboard'
    end
  end

  def dashboard

  end

end
