class WelcomeController < ApplicationController
	def index
		@posts = Post.all.order("title asc")
		@projects = Project.all.limit(3).order("created_at desc")
	end
end
