class Url < ActiveRecord::Base

	before_save :shortened_url
	def shortened_url
		self.full_url_hash = Digest::MD5.hexdigest(self.full_url + "with url shortner service")
		self.short_url = self.full_url_hash.slice(0..6) 
	end
	
end
