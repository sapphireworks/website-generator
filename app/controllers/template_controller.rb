class TemplateController < ApplicationController
	def index
		@templates = Template.all
	end

	def show
		@template = Template.find(params[:id])
	end
end
