class Url < ActiveRecord::Base
	 validates :long_url, presence: true
	 validates :long_url, format: { with: /http(s)*:\/\/w{0,3}\W*\S*\W\S*/, message: "must be a valid url"}
	 validates :short_url, presence: true

	 def self.retrieve_short_url(long)
	 	url = Url.find_by(:long_url == long)
	 	if url == nil
	 		return nil
	 	else
	 		return url.short_url
	 	end
	 end


end

