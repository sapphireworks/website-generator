class Template < ActiveRecord::Base
	has_one :color_pallete
	has_one :home_section
	has_one :about_section
	has_one :contact_us_section
	has_one :nav_bar
	has_one :footer
	has_one :client
end
