class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    user_path(@user, redir_param: 21, accord_param: "flush-headingTwo") # your path
  end
end
