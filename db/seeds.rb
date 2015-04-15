  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

template = Template.new
template.name = 'template-1'
template.thumbnail_path = 'template-1/thumb.png'
template.save

theme = Theme.new
theme.name = 'light'
theme.templates_id = 1
theme.save

navbar = NavBar.new
navbar.name='nav-bold-ease-scroll'
navbar.html = 'navs/_1.html.erb'
navbar.templates_id = 1
navbar.themes_id = 1
navbar.save

home_section = HomeSection.new
home_section.name = 'normal-big-image'
home_section.html = 'home-sections/_1.html.erb'
home_section.templates_id = 1
home_section.themes_id = 1
home_section.save

about_section = AboutSection.new
about_section.name = 'normal-about-section'
about_section.html = 'about-sections/_1.html.erb'
about_section.templates_id = 1
about_section.themes_id = 1
about_section.save

catalogue_section = CatalogueSection.new
catalogue_section.html = 'catalogue-sections/_1.html.erb'
catalogue_section.templates_id = 1
catalogue_section.themes_id = 1
catalogue_section.save

contact_us_section = CatalogueSection.new
contact_us_section.name = 'normal-contact-with-map'
contact_us_section.html = 'contact-us-sections/_1.html.erb'
contact_us_section.templates_id = 1
contact_us_section.themes_id = 1
contact_us_section.save

footer = Footer.new
footer.name = 'normal-footer'
footer.html = "footers/_1.html.erb"
footer.templates_id = 1
footer.themes_id = 1
