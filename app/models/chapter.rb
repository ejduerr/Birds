class Chapter < ActiveRecord::Base
	has_many :birds
			
		has_attached_file :primary_image, :styles => { :main => ["375x375#", :png], :thumb => ["140x140#", :png], :tiny => ["96x96#", :png]}
end
