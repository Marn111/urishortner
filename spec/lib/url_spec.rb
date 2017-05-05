require "spec_helper"
require "url"

describe Url do
	it "is named Google." do
		url = Url.new
		url.full_url.should == "http://www.google.com"
	end

	it "url should valid" do
		url = Url.new
		url.length.should > 1
	end	
end