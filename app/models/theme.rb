class Theme < ActiveRecord::Base
	belongs_to :template
	has_many :nav_bars , :footers , :about_sections , :home_sections , :contact_us_sections , :catalogue_sections
end
