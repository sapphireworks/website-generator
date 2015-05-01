class TemplateController < ApplicationController
	require 'open-uri'

	BASE_URL = "http://www.homna.com/items/"

	def index
		@templates = Template.all
	end

	def show
		@template = Template.find(params[:id])

		@nav = NavBar.where("templates_id = ?",@template.id).first
		@home_section = HomeSection.where("templates_id = ?",@template.id).first
		@about_section = AboutSection.where("templates_id = ?",@template.id).first
		@catalogue_section = CatalogueSection.where("templates_id = ?",@template.id).first
		@contact_us_section = ContactUsSection.where("templates_id = ?",@template.id).first
		@footer = Footer.where("templates_id = ?",@template.id).first

		render @template.template_path.to_s

		# render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found
	end

	def customize
		client = Client.find_by(id: 1) #FIXME Hardcoded ! , We don't know how to authorize that client !

		if client.nil?
			flash[:error] = "you are not an authorized user , please try again"
			redirect_to :action => 'index'

		elsif client.data.nil?
				url = "#{BASE_URL}#{client.username}/fspec-lightop.json"
				json = open(url).read
				client.data = json
				client.save

		end


	end


	def catalogue
		@template = Template.find(params[:id])

		@nav = NavBar.where("templates_id = ?", @template.id).first;
		@footer = Footer.where("templates_id = ?", @template.id).first;

		render @template.catalogue_path.to_s
	end
end
