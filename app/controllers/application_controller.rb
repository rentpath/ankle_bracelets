class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  after_filter :store_location
  def store_location
    if (request.fullpath != "/users/sign_in" &&
          request.fullpath != "/users/sign_up" &&
          request.fullpath != "/users/password" &&
          request.fullpath != "/users/sign_out" &&
          !request.xhr?) # don't store ajax calls
       store_location_for :user, request.fullpath 
    end
  end
end
