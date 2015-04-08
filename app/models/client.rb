class Client < ActiveRecord::Base
	belongs_to :template
	has_many :photos
end
