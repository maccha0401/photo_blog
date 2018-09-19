class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # ■session helper
  include SessionsHelper
end
