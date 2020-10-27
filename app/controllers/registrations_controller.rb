class RegistrationsController < ApplicationController
  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
