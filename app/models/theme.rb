class Theme < ActiveRecord::Base
	belongs_to :template
	has_many :nav_bars
	has_many :footers  
	has_many :about_sections
	has_many :home_sections
	has_many :contact_us_sections
	has_many :catalogue_sections
end
