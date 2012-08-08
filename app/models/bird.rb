class Bird < ActiveRecord::Base
		validates :common_name, :scientific_name, :chinese_name, :tibetan_name, :size, :english_description, :chinese_description, :chapter, :presence => true
end
