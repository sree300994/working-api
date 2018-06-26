class Api::V2::ApiController < ApplicationController
	skip_before_action :verify_authenticity_token

	def check_api_key
		if params[:api_key]
			@user = User.find_by(api_key: params[:api_key])
			if @user.nil?
				render '/api/v2/sessions/invalid.json'
			else
				return @user
			end
		else
			render '/api/v2/sessions/alert.json'
		end
	end

	rescue_from ActiveRecord::RecordNotFound do
		render 'record_not_found.json'
	end
end