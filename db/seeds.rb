  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Template 1

template = Template.new
template.name = 'template-1'
template.thumbnail_path = 'template-1/thumb.png'
template.template_path = 'template/template-1/index.html.erb'
template.save

theme = Theme.new
theme.name = 'light'
theme.templates_id = 1
theme.save

navbar = NavBar.new
navbar.name='nav-bold-ease-scroll'
navbar.path = 'template/navs/nav_1.html.erb'
navbar.templates_id = 1
navbar.themes_id = 1
navbar.save

home_section = HomeSection.new
home_section.name = 'normal-big-image'
home_section.path = 'template/home-sections/home_section_1.html.erb'
home_section.templates_id = 1
home_section.themes_id = 1
home_section.save

about_section = AboutSection.new
about_section.name = 'normal-about-section'
about_section.path = 'template/about-sections/about_section_1.html.erb'
about_section.templates_id = 1
about_section.themes_id = 1
about_section.save

catalogue_section = CatalogueSection.new
catalogue_section.path = 'template/catalogue-sections/catalogue_section_1.html.erb'
catalogue_section.templates_id = 1
catalogue_section.themes_id = 1
catalogue_section.save

contact_us_section = ContactUsSection.new
contact_us_section.name = 'normal-contact-with-map'
contact_us_section.path = 'template/contact-us-sections/contact_us_section_1.html.erb'
contact_us_section.templates_id = 1
contact_us_section.themes_id = 1
contact_us_section.save

footer = Footer.new
footer.name = 'normal-footer'
footer.path = "template/footers/footer_1.html.erb"
footer.templates_id = 1
footer.themes_id = 1
footer.save

#Template 2

template = Template.new
template.name = 'template-2'
template.thumbnail_path = 'template-2/thumb.png'
template.template_path = 'template/template-2/index.html.erb'
template.save

theme = Theme.new
theme.name = 'light-wide'
theme.templates_id = 2
theme.save

navbar = NavBar.new
navbar.name='nav-pills'
navbar.path = 'template/navs/nav_2.html.erb'
navbar.templates_id = 2
navbar.themes_id = 2
navbar.save

home_section = HomeSection.new
home_section.name = 'nav-eater'
home_section.path = 'template/home-sections/home_section_2.html.erb'
home_section.templates_id = 2
home_section.themes_id = 2
home_section.save

about_section = AboutSection.new
about_section.name = 'normal-about-section'
about_section.path = 'template/about-sections/about_section_2.html.erb'
about_section.templates_id = 2
about_section.themes_id = 2
about_section.save

catalogue_section = CatalogueSection.new
catalogue_section.path = 'template/catalogue-sections/catalogue_section_2.html.erb'
catalogue_section.templates_id = 2
catalogue_section.themes_id = 2
catalogue_section.save

contact_us_section = ContactUsSection.new
contact_us_section.name = 'vertical-contact-with-map'
contact_us_section.path = 'template/contact-us-sections/contact_us_section_2.html.erb'
contact_us_section.templates_id = 2
contact_us_section.themes_id = 2
contact_us_section.save

footer = Footer.new
footer.name = 'normal-footer'
footer.path = "template/footers/footer_2.html.erb"
footer.templates_id = 2
footer.themes_id = 2
footer.save

client = Client.new
client.username = 'parador-flooring'
client.save
