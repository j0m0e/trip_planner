module Weather

	API_ROOT = "http://api.wunderground.com/api/#{ENV['WUNDERGROUND_KEY']}/planner_"

	def self.search(dates, city, state)
		HTTParty.get( [API_ROOT, dates, '/q/', state, '/', city, '.json'].join('') )
	end



end


