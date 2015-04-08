class Template < ActiveRecord::Base
	has_one :color_pallete
	has_one :home_section
	has_one :about_section
end
