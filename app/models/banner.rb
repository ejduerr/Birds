class Banner < ActiveRecord::Base
belongs_to :bird
has_attached_file :main_image, :styles => { :main => ["375x375#", :png], :thumb => ["140x140#", :png], :tiny => ["96x96#", :png]}
end
