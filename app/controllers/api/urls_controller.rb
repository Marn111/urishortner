require "base64"
class Api::UrlsController < ActionController::Base
  skip_before_filter :verify_authenticity_token

	def shortner
		@url = Url.find_by(full_url: params[:full_url])
		unless @url.present?
			@url = Url.new(full_url: params[:full_url])
			if @url.save
				return render json: @url, status: 200
			else
				return render json: @url.errors, status: 404
			end
		else
			return render json: @url, status: 200
		end
	end

	

end