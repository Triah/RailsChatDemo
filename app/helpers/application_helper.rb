module ApplicationHelper

	def user_logged_in?
		session[:current_user_id].present?
	end

	def get_current_user
		User.find_by(id: session[:current_user_id]) if user_logged_in?
	end
end
