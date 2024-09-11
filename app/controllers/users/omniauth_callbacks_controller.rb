# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_oauth2
    authorization
   end

   private
   def authorization
    begin
      sns_info = User.from_omniauth(request.env["omniauth.auth"])
      @user = sns_info[:user]

      if @user.persisted? && @user.active_for_authentication?
        sign_in_and_redirect @user, event: :authentication
        set_flash_message(:notice, :success, kind: "Google") if is_navigational_format?
      else
        @sns_id = sns_info[:sns].id
        render template: 'devise/registrations/new'
      end
    rescue StandardError => e
      flash[:alert] = "There was a problem signing you in: #{e.message}"
      redirect_to new_user_registration_url
    end
  end
end
