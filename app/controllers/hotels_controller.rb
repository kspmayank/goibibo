require 'net/http'

class HotelsController < ApplicationController
  def index
  end

  def search
		url = URI.parse('http://developer.goibibo.com/api/voyager/get_hotels_by_cityid/?app_id=432d85a4&app_key=f3088ce10d4b218d28d4355d03e9ca1f&city_id=6771549831164675055')
		req = Net::HTTP::Get.new(url.to_s)
		res = Net::HTTP.start(url.host, url.port) {|http|
		  http.request(req)
		}
		#puts res.body
  end

  def results
  end
end
