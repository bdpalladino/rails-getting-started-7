class ApplicationController < ActionController::Base
  before_action :authenticate_user! # use devise authentication
end
