class ApplicationController < ActionController::Base
  before_action :build_posts_list

  def build_posts_list
  	@posts = Post.all
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
