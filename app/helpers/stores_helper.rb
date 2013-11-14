module StoresHelper

	def convert_store_hours(time)
 		 hour = time.to_i / 60
 		 mins = time.to_i % 60
 		 return hour.to_s + ":" + mins.to_s + "0"
			
	end
end