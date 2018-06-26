class GenderController < ApplicationController
  def determine
  	if params[:name]
  		response = HTTParty.get("http://gender-api.com/get?name=#{params[:name]}&key=pRPLCejozFwCHFbVCR")
  		@result = JSON.parse(response.body)
  	end
  end
end
