class Footer < ActiveRecord::Base
	belongs_to :template
	belongs_to :theme
end
