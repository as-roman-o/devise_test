# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def sign_up_params
    params.permit(:email, :password, :password_confirmation)
  end
end
