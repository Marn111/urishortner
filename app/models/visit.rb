class Visit < ActiveRecord::Base
  has_many :ahoy_events, class_name: "Ahoy::Event"
  belongs_to :url

  before_save :save_with_url
  def save_with_url
  	url = Url.where(short_url: self.landing_page).first
  	p "url_id: #{url.id}"
  	if url.present?
  		self.url_id = url.id
      p "added"
  	end
  end
end
	