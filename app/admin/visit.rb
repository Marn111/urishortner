ActiveAdmin.register Visit do

permit_params :visitor_id, :ip, :user_agent, :referrer, :landing_page, :user_id, :referring_domain,
							:search_keyword, :browser, :os, :device_type, :screen_height, :screen_width,
							:country, :region, :city, :postal_code, :latitude, :longitude, :utm_source,
							:utm_medium, :utm_term, :utm_content, :utm_campaign, :started_at

end
