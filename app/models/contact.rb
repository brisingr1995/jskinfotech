class Contact < MailForm::Base
	attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
  	{
	  	:subject => "Contact Form",
	  	:to => "lionelcd94@gmail.com",
	  	:from => %("#{name}" <#{email}>)
	  }
	end

	@users = User.all
	@hash = Gmaps4rails.build_markers(@users) do |user, marker|
	  marker.lat user.latitude
	  marker.lng user.longitude
	end
	
end