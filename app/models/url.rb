class Url < ActiveRecord::Base
	has_many :visits, dependent: :destroy
	validates :full_url, url: true
	before_save :make_shortened_url
	
	def make_shortened_url
		encoded_url = Digest::MD5.hexdigest(self.full_url + "with url shortner service")
		self.full_url_hash = encoded_url
		self.short_url = "#{ENV['service_host']}" + encoded_url.slice(0..6) 
	end

end
