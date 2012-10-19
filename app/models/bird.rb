class Bird < ActiveRecord::Base
		
		has_attached_file :primary_image, :styles => { :main => ["375x563#", :png], :thumb => ["140x210#", :png]}
				
		has_attached_file :secondary_image, :styles => { :main => ["200x200", :png] }
		
		has_attached_file :range_map, :styles => { :main => ["282x221#", :png] }
		
		has_attached_file :song
		
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
