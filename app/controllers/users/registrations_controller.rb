# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def create
    Rails.logger.debug("Params: #{params.inspect}")
    if params[:sns_auth] == 'true'
      pass = Devise.friendly_token
      if params[:user]
        params[:user][:password] = pass
        params[:user][:password_confirmation] = pass
      else
        Rails.logger.error("params[:user] is nil")
      end
    end
    super
  end
end
