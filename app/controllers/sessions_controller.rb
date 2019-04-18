class SessionsController < Devise::SessionsController

  protect_from_forgery with: :null_session
  respond_to :json

  private

  def sign_in_params
    params.permit(:email, :password)
  end

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end
end