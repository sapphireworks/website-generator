class NavBar < ActiveRecord::Base
	belongs_to :template
	belongs_to :color_pallet
end
