require 'test_helper'

class UrlTest < ActiveSupport::TestCase
  test "should not save url without full name" do
	  url = Url.new
	  assert_equal == url.save
	end
end
