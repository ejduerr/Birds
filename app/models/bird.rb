class Bird < ActiveRecord::Base
		validates :common_name, :scientific_name, :chinese_name, :tibetan_name, :size, :english_description, :chinese_description, :chapter, :presence => true
		def set_seasons(season_string)
			seasons = season_string.split ";"
			if seasons.include? "su"
				self.summer = true
			end	
			if seasons.include? "sp"
				self.spring = true
			end
			if seasons.include? "f"
				self.fall = true
			end
			if seasons.include? "w"
				self.winter = true		
			end			
		end
end
