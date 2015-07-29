class RegistrationsController < Devise::RegistrationsController

	private

	def sing_up_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
	end

end