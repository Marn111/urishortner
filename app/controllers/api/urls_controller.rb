require "base64"
class Api::UrlsController < ActionController::Base
	skip_before_filter :verify_authenticity_token

	def shortner
		@url = Url.find_by(full_url: params[:full_url])
		unless @url.present?
			@url = Url.new(full_url: params[:full_url])
			unless @url.save
				return render json: @url.errors, status: 404
			end
		end
		return render json: @url, status: 200
		
	end

	def goto_full_address
		@url = Url.find_by(short_url: "http://localhost:3000/#{params[:short_url]}") 
		if @url.present?
			ahoy.track "Processed #{controller_name}##{action_name}", request.filtered_parameters
			ahoy.track_visit
			redirect_to @url.full_url
		else
			return render json: {message: "Invalid short url."}, status: 400
		end
	end

	def visits
		@url = Url.find_by_id(params[:id])
		if @url.present?
			return render json: @url.visits, status: 200
		else
			return render json: {message: "Invalid short url id."}, status: 400
		end
	end

end