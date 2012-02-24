class ApplicationController < ActionController::Base
  before_filter :login_required
  include ControllerAuthentication
  protect_from_forgery
end
