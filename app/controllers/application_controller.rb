class ApplicationController < ActionController::Base
  ActionController::Base
  before_action :authenticate_user!
end
