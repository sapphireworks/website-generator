# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

template = Template.new
template.template_path = 'app/views/template/template-1/index.html.erb'
template.thumbnail_path = 'app/assets/images/template-1/thumb.png'
template.save
