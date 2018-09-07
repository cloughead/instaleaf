# frozen_string_literal: true
module Admin
  class SessionsController < Devise::SessionsController
    layout false
  end
end
