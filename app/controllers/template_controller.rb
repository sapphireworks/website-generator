class TemplateController < ApplicationController
	def index
		@templates = Template.all
	end

	def show
		@template = Template.find(params[:id])
		render :file => @template.template_path   #path should be in the scope of assets ==> 'template-1/index.html.erb'
	end
end
