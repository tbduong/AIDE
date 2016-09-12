class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # TODO: Excessive white space.  

  include SessionsHelper
  include UserHelper
end
