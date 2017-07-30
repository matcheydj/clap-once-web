class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :page_location

  private

  def page_location
    session[:page] = nil
  end
end
