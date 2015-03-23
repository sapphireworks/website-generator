class TemplateController < ApplicationController
	def index
		@templates = Template.all
	end

	def show
		@template = Template.find(params[:id])
		render :template => @template.template_path.to_s   # path should be in the scope of assets ==> 'template/
																											 # template-1/index.html.erb'
	end
end
