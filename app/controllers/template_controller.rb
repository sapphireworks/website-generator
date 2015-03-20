class TemplateController < ApplicationController
	def index
		@templates = Template.all
	end

	def show
		@template = Template.find(params[:id])
		render :file => @template.template_path   #path should be like >> 'public/templates/template-1/index.html'
	end
end
