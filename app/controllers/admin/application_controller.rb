module Admin
  class ApplicationController < ::ApplicationController
    layout 'login'
    before_action :authenticate_user!

  end
end